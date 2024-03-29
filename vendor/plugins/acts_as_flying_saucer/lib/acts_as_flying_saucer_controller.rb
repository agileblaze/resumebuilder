# ActsAsFlyingSaucer
module ActsAsFlyingSaucer
  
  module Controller
    
    def self.included(base)
      base.extend(ClassMethods)
    end
  
    private
    
    # ClassMethods
    #
    module ClassMethods
    
      # acts_as_flying_saucer
      #
      def acts_as_flying_saucer
        self.send(:include, ActsAsFlyingSaucer::Controller::InstanceMethods)
        class_eval do
          attr_accessor :pdf_mode
        end
      end
    end
  
    # InstanceMethods
    #
    module InstanceMethods
      
      # render_pdf
      #
      def render_pdf(options = {})
        
        host = ActionController::Base.asset_host
        ActionController::Base.asset_host = request.protocol + request.host_with_port if host.blank?
        
        logger.debug("#{host} - #{host.nil?} - #{ActionController::Base.asset_host}")
        
        self.pdf_mode = :create
        html = render_to_string options
        self.pdf_mode = nil
        if options[:debug_html]
          ActionController::Base.asset_host = host
          response.header["Content-Type"] = "text/html; charset=utf-8"
          render :text => html and return
        end   
        # saving the file
        tmp_dir = ActsAsFlyingSaucer::Config.options[:tmp_path]
        html_digest = Digest::MD5.hexdigest(html)
        input_file = "#{tmp_dir}/#{html_digest}.html"
        
        logger.debug("html file: #{input_file}")
      
        output_file = (options.has_key?(:pdf_file)) ? options[:pdf_file] : "#{tmp_dir}/#{html_digest}.pdf"
        password = (options.has_key?(:password)) ? options[:password] : ""  
        
       
        generate_options = ActsAsFlyingSaucer::Config.options.merge({
          :input_file => input_file, 
          :output_file => output_file,
          :html => html,
          })

        ActsAsFlyingSaucer::Xhtml2Pdf.write_pdf(generate_options)
        if  password != ""
          op=output_file.split(".")
          op.pop
          op  << "a"
          op=op.to_s+".pdf"
          output_file_name =  op
          ActsAsFlyingSaucer::Xhtml2Pdf.encrypt_pdf(generate_options,output_file_name,password)
          output_file = op
        end
        # restoring the host
        ActionController::Base.asset_host = host
        
        # sending the file to the client
        if options[:send_file]
        
          send_file_options = {
            :filename => File.basename(output_file)
            #:x_sendfile => true,
          }
          
          send_file_options.merge!(options[:send_file]) if options.respond_to?(:merge)
        
          send_file(output_file, send_file_options)
        end
      end
    end
  end
 
end
