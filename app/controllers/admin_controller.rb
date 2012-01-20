class AdminController < ApplicationController
  # require "rubygems"
  acts_as_flying_saucer
  # require "pdf/writer"
  def index
    if session[:aid]==nil
      redirect_to :controller => 'admin', :action => 'signout'
    else
      
    end
  end
  def view_all
    if session[:aid]==nil
      redirect_to :controller => 'admin', :action => 'signout'
    else
      @data=User.all
    end
  end
  def view
    if session[:aid]==nil
      redirect_to :controller => 'admin', :action => 'signout'
    else
      id=params[:id]
      @user=User.find(:first,:conditions=>["id=?",id])
      @professinoal=Professional.find(:first,:conditions=>["user_id=?",id])
      @professionalsummary=ProfessionalSummary.find(:all,:conditions=>["user_id=?",id])
      @role_res=RoleResponsibility.find(:all,:conditions=>["user_id=?",id],:order=>'priority asc')
      @ref_work=ReferanceWork.find(:all,:conditions=>["user_id=?",id],:order=>'priority asc')
      @languge=UserLanguge.find(:all,:conditions=>["user_id=?",id])
      @lcount=UserLanguge.count(:conditions=>["user_id=?",id])
      @framework=UserFramework.find(:all,:conditions=>["user_id=?",id])
      @fcount=UserFramework.count(:conditions=>["user_id=?",id])
      @os=UserOperatingSystem.find(:all,:conditions=>["user_id=?",id])
      @oscount=UserOperatingSystem.count(:conditions=>["user_id=?",id])
      @db=UserDatabase.find(:all,:conditions=>["user_id=?",id])
      @dbcount=UserDatabase.count(:conditions=>["user_id=?",id])
      @tool=UserWebtool.find(:all,:conditions=>["user_id=?",id])
      @toolcount=UserWebtool.count(:conditions=>["user_id=?",id])
      @graduation=Educational.find(:first,:conditions=>["user_id=? and qualification= 'graduation'",id])
      @gcount=Educational.count(:conditions=>["user_id=? and qualification= 'graduation'",id])
      @dcount=Professional.count(:conditions=>["user_id=?",id])
      @pcount= ProfessionalSummary.count(:conditions=>["user_id=?",id])
      @rfcount=ReferanceWork.count(:conditions=>["user_id=?",id])
      @rrcount=RoleResponsibility.count(:conditions=>["user_id=?",id])
      @cccount=CoreCompetency.count(:conditions=>["user_id=?",id])
      @core_comp=CoreCompetency.find(:all,:conditions=>["user_id=?",id],:order=>'priority asc')
      @cercount=Certification.count(:conditions=>["user_id=?",id])
      @cer=Certification.find(:all,:conditions=>["user_id=?",id],:order=>'priority asc')
      @other_count=TechOther.count(:conditions=>["user_id=?",id])
      @other=TechOther.find(:all,:conditions=>["user_id=?",id])
      @id=id
      @edu=Educational.find(:all,:conditions=>["user_id=?",id])
      @degree=''
      @edu.each do |a|
        if a.qualification_name.name=="Graduation"||a.qualification_name.name=="graduation"
          @q_id=a.degree_name_id
          @qual=a.qualification_name.name
          @degree=a.degree_name.name
          @decipline=a.discipline.name
          @university=a.university.name
        else if a.qualification_name.name=='pg'||a.qualification_name.name=='PG'||a.qualification_name.name=='Pg'|| a.qualification_name.name=='post graduation'||a.qualification_name.name=='Post Graduation'||a.qualification_name.name=='post Graduation'||a.qualification_name.name=='Post graduation'||a.qualification_name.name=='Postgraduation'||a.qualification_name.name=='PostGraduation'||a.qualification_name.name=='Postgraduation'
            @q_id=a.degree_name_id
            @degree=a.degree_name.name
            @decipline=a.discipline.name
            @university=a.university.name
          else if a.qualification_name.name=='Diploma'||a.qualification_name.name=='diploma'
              @q_id=a.degree_name_id
              @degree=a.degree_name.name
              @decipline=a.discipline.name
              @university=a.university.name
            end
          end
        end
      end
    end
  end
  def add_item
   
  end
  def add_dec
    dec=params[:discipline]
    @discipline=Discipline.new(params[:discipline])
    @discipline.save
    flash[:msg]="Add  #{dec} successfully "
    redirect_to :action=>"index"
  end
  def add_g
    g=params[:graduation]
    @graduation=Graduation.new(params[:graduation])
    @graduation.save
    flash[:msg]="Add  #{g} successfully "
    redirect_to :action=>"index"
  end

  def pdf1
    #spk = image_tag "spk.png"
    id=params[:id]
    @user=User.find(:first,:conditions=>["id= ?",id ])
    @professinoal=Professional.find(:first,:conditions=>["user_id=?",id])
    @designation=Designation.find(:first,:conditions=>["id=?",   @professinoal[:designation_id]])
    @professionalsummary=ProfessionalSummary.find(:all,:conditions=>["user_id=?",id])
    @role_res=RoleResponsibility.find(:all,:conditions=>["user_id=?",id])
    @ref_work=ReferanceWork.find(:all,:conditions=>["user_id=?",id])
    #@user="njxchzxhjhxj"
    require "pdf/writer"
    pdf = PDF::Writer.new()
    pdf.fill_color    Color::RGB::Black
    pdf.select_font "Times-Roman"
    pdf.text @user.fname, :font_size =>18 , :justification => :left
    pdf.add_text(80, pdf.y, @user.lname, 18, 0)
    pdf.text @designation.designation, :font_size =>12 , :justification => :left
    pdf.text @professinoal.description, :font_size =>12 , :justification => :full
    pdf.text "", :font_size =>12 , :justification => :full
    pdf.text "Professional Summary", :font_size =>16 , :justification => :left
    @professionalsummary.each do |a|
       pdf.text a.summary, :font_size =>12 , :justification => :full
    end
    pdf.text "Role And Responsiblity", :font_size =>16 , :justification => :left
    @role_res.each do |a|
      pdf.text a.role, :font_size =>12 , :justification => :full
    end
    pdf.text "Referance Work", :font_size =>20 , :justification => :left
    @ref_work.each do |a|
      pdf.text a.title, :font_size =>16 , :justification => :full
      pdf.text a.description, :font_size =>12 , :justification => :full
    end
   send_data pdf.render, :filename => "hello.pdf",:type => "application/pdf"
  end
  def pdf
    id=params[:id]
    @user=User.find(:first,:conditions=>["id=?",id])
    @professinoal=Professional.find(:first,:conditions=>["user_id=?",id])
    #@designation=Designation.find(:first,:conditions=>["id=?",   @professinoal[:designation_id]])
    @professionalsummary=ProfessionalSummary.find(:all,:conditions=>["user_id=?",id])
    @role_res=RoleResponsibility.find(:all,:conditions=>["user_id=?",id],:order=>'priority asc')
    @ref_work=ReferanceWork.find(:all,:conditions=>["user_id=?",id],:order=>'priority asc')
    @languge=UserLanguge.find(:all,:conditions=>["user_id=?",id])
    @lcount=UserLanguge.count(:conditions=>["user_id=?",id])
    @framework=UserFramework.find(:all,:conditions=>["user_id=?",id])
    @fcount=UserFramework.count(:conditions=>["user_id=?",id])
    @os=UserOperatingSystem.find(:all,:conditions=>["user_id=?",id])
    @oscount=UserOperatingSystem.count(:conditions=>["user_id=?",id])
    @db=UserDatabase.find(:all,:conditions=>["user_id=?",id])
    @dbcount=UserDatabase.count(:conditions=>["user_id=?",id])
    @tool=UserWebtool.find(:all,:conditions=>["user_id=?",id])
    @toolcount=UserWebtool.count(:conditions=>["user_id=?",id])
    @graduation=Educational.find(:first,:conditions=>["user_id=? and qualification= 'graduation'",id])
    @gcount=Educational.count(:conditions=>["user_id=? and qualification= 'graduation'",id])
    @dcount=Professional.count(:conditions=>["user_id=?",id])
    @pcount= ProfessionalSummary.count(:conditions=>["user_id=?",id])
    @rfcount=ReferanceWork.count(:conditions=>["user_id=?",id])
    @rrcount=RoleResponsibility.count(:conditions=>["user_id=?",id])
    @cccount=CoreCompetency.count(:conditions=>["user_id=?",id])
    @core_comp=CoreCompetency.find(:all,:conditions=>["user_id=?",id],:order=>'priority asc')
    @cercount=Certification.count(:conditions=>["user_id=?",id])
    @cer=Certification.find(:all,:conditions=>["user_id=?",id],:order=>'priority asc')
    @other_count=TechOther.count(:conditions=>["user_id=?",id])
    @other=TechOther.find(:all,:conditions=>["user_id=?",id])
    @edu=Educational.find(:all,:conditions=>["user_id=?",id])
    @degree=''
    @edu.each do |a|
      if a.qualification_name.name=="Graduation"||a.qualification_name.name=="graduation"
        @degree=a.degree_name.name
        @decipline=a.discipline.name
        @university=a.university.name
      else if a.qualification_name.name=='pg'||a.qualification_name.name=='PG'||a.qualification_name.name=='Pg'|| a.qualification_name.name=='post graduation'||a.qualification_name.name=='Post Graduation'||a.qualification_name.name=='post Graduation'||a.qualification_name.name=='Post graduation'||a.qualification_name.name=='Postgraduation'||a.qualification_name.name=='PostGraduation'||a.qualification_name.name=='Postgraduation'
          @degree=a.degree_name.name
          @decipline=a.discipline.name
          @university=a.university.name
        end
      end
    end
    name=@user.fname
    time=Time.now
   render_pdf :template => 'admin/pdf', :send_file => {:filename =>"#{name}#{time}.pdf",:x_sendfile => false, :type => "application/pdf"}
  end
  def download_resume
    id=params[:id]
    @user_data=UserResume.find(:first,:conditions=>["user_id=?",id])
    if UserResume.count(:conditions=>["user_id=?",id])>0
      #render :text=>"#{RAILS_ROOT}/public"+@user_data.public_filename
      send_file("#{RAILS_ROOT}/public"+@user_data.public_filename,
        :disposition => 'attachment',
        :encoding => 'utf8',
        #:type => @asset.content_type,
        :filename => URI.encode(@user_data.filename))
    else
      redirect_to :action=>"view_all"
    end
  end
  def config
    if session[:aid]==nil
      redirect_to :controller => 'admin', :action => 'signout'
    else
    end
  end
  ###########################################################
  def languge
    if session[:aid]==nil
      redirect_to :controller => 'admin', :action => 'signout'
    else
      @count=Languge.count
      @languge1=Languge.find(:all,:conditions=>["id!='1'"])
    end
  end
  def add_lang
    #lang=params[:languge]
    @languge= Languge.new(params[:langug])
    if @languge.save
      #flash[:msg]="Add languge #{lang} successfully "
      redirect_to :action=>"languge"
    else
      @count=Languge.count
      @languge1=Languge.find(:all,:conditions=>["id!='1'"])
      render :action=>"languge"
    end
  end
  def del_lang
    id=params[:id]
    Languge.delete_all(:id=> id)
    UserLanguge.delete_all(:languge_id=> id)
    flash[:msg]="Languge is deleted"
    redirect_to :action=>"languge"
  end
  def edit_lang
    if session[:aid]==nil
      redirect_to :controller => 'admin', :action => 'signout'
    else
      @languge=Languge.find(:first,:conditions=>["id=?",params[:id]])
    end
  end
  def update_lang
    @languge= Languge.find(:first,:conditions=>["id=?",params[:id]])
    if @languge.update_attributes(params[:languge])
      redirect_to :action=>"languge"
    else
      #@languge=Languge.find(:first,:conditions=>["id=?",params[:id]])
      render :action=>"edit_lang"
    end
    #@id=params[:languge]
  end
  ######################################################################
  def framework
    if session[:aid]==nil
      redirect_to :controller => 'admin', :action => 'signout'

    else
      @count=Framework.count
      @framework1=Framework.find(:all,:conditions=>["id!='1'"])
    end
  end
  def add_fm
    fm=params[:framework]
    @framework=Framework.new(params[:framewor])
    if @framework.save
      redirect_to :action=>"framework"
    else
      @count=Framework.count
      @framework1=Framework.find(:all,:conditions=>["id!='1'"])
      render :action=>"framework"
    end
  end
  def del_fm
    id=params[:id]
    Framework.delete_all(:id=> id)
    UserFramework.delete_all(:framework_id=>id)
    redirect_to :action=>"framework"
  end
  def edit_fm
    if session[:aid]==nil
      redirect_to :controller => 'admin', :action => 'signout'
    else
      @framework=Framework.find(:first,:conditions=>["id=?",params[:id]])
    end
  end
  def update_fm
    @framework= Framework.find(:first,:conditions=>["id=?",params[:id]])
    if@framework.update_attributes(params[:framework])
      redirect_to :action=>"framework"
    else
      render :action=>"edit_fm"
    end
  end
  ########################################################################
  def opeating
    if session[:aid]==nil
      redirect_to :controller => 'admin', :action => 'signout'
    else
      @count=OperatingSystem.count
      @os=OperatingSystem.find(:all,:conditions=>["id!='1'"])
    end
  end
  def add_os
    @operating_system=OperatingSystem.new(params[:operatingsystem])
    if @operating_system.save
      redirect_to :action=>"opeating"
    else
      @count=OperatingSystem.count
      @os=OperatingSystem.find(:all,:conditions=>["id!='1'"])
      render :action=>"opeating"
    end
  end
  def edit_os
    if session[:aid]==nil
      redirect_to :controller => 'admin', :action => 'signout'
    else
      @operatingsystem=OperatingSystem.find(:first,:conditions=>["id=?",params[:id]])
    end
  end
  def update_os
    @operating_system= OperatingSystem.find(:first,:conditions=>["id=?",params[:id]])
    if @operating_system.update_attributes(params[:operatingsystem])
      redirect_to :action=>"opeating"
    else
      @operatingsystem=OperatingSystem.find(:first,:conditions=>["id=?",params[:id]])
      render :action=>"edit_os"
    end
  end
  def del_os
    id=params[:id]
    OperatingSystem.delete_all(:id=> id)
    UserOperatingSystem.delete_all(:operating_system_id=>id)
    redirect_to :action=>"opeating"
  end
  ############################################################################
  def database
    if session[:aid]==nil
      redirect_to :controller => 'admin', :action => 'signout'
    else
      @count= Database.count
      @db= Database.find(:all,:conditions=>["id!='1'"])
    end 
  end
  def add_db
    @database=Database.new(params[:database])
    if @database.save
      redirect_to :action=>"database"
    else
      @count= Database.count
      @db= Database.find(:all,:conditions=>["id!='1'"])
      render :action=>"database"
    end
  end
  def del_db
    id=params[:id]
    Database.delete_all(:id=> id)
    UserDatabase.delete_all(:database_id => id)
    redirect_to :action=>"database"
  end
  def edit_db
    if session[:aid]==nil
      redirect_to :controller => 'admin', :action => 'signout'
    else
      @database=Database.find(:first,:conditions=>["id=?",params[:id]])
    end    
  end
  def update_db
    @database= Database.find(:first,:conditions=>["id=?",params[:id]])
    if @database.update_attributes(params[:database])
      redirect_to :action=>"database"
    else
      #@database=Database.find(:first,:conditions=>["id=?",params[:id]])
      render :action=>"edit_db"
    end
  end
  ##############################################################################
  def webtool
    if session[:aid]==nil
      redirect_to :controller => 'admin', :action => 'signout'
    else
      @count= WebTool.count
      @wt= WebTool.find(:all,:conditions=>["id!='1'"])
    end
  end
  def add_wt
    @web_tool=WebTool.new(params[:webtool])
    if@web_tool.save
      redirect_to :action=>"webtool"
    else
      @count= WebTool.count
      @wt= WebTool.find(:all,:conditions=>["id!='1'"])
      render :action=>"webtool"
    end 
  end
  def del_wt
    id=params[:id]
    WebTool.delete_all(:id=> id)
    UserWebtool.delete_all(:web_tool_id 	 => id)
    redirect_to :action=>"webtool"
  end
  def edit_wt
    if session[:aid]==nil
      redirect_to :controller => 'admin', :action => 'signout'
    else
      @webtool=WebTool.find(:first,:conditions=>["id=?",params[:id]])
    end  
  end
  def update_wt
    @web_tool= WebTool.find(:first,:conditions=>["id=?",params[:id]])
    if @web_tool.update_attributes(params[:webtool])
      redirect_to :action=>"webtool"
    else
      render :action=>"edit_wt"
    end
  end
  ##############################################################################
  def designation
    if session[:aid]==nil
      redirect_to :controller => 'admin', :action => 'signout'
    else
      @count= Designation.count
      @des= Designation.find(:all,:conditions=>["id!='1'"])
    end
  end
  def add_des
    des=params[:designation]
    @designation=Designation.new(params[:designation])
    if @designation.save
      redirect_to :action=>"designation"
    else
      @count= Designation.count
      @des= Designation.find(:all,:conditions=>["id!='1'"])
      render :action=>"designation"
    end
  end
  def edit_des
    if session[:aid]==nil
      redirect_to :controller => 'admin', :action => 'signout'
    else
      @designation=Designation.find(:first,:conditions=>["id=?",params[:id]])
    end
  end
  def update_des
    @designation= Designation.find(:first,:conditions=>["id=?",params[:id]])
    if @designation.update_attributes(params[:designation])
      redirect_to :action=>"designation"
    else
      #@designation=Designation.find(:first,:conditions=>["id=?",params[:id]])
      render :action=>"edit_des"
    end   
  end
  def del_des
    id=params[:id]
    Designation.delete_all(:id=> id)
    Professional .delete_all(:designation_id=> id)
    redirect_to :action=>"designation"
  end
  ##############################################################################
  def graduation
    if session[:aid]==nil
      redirect_to :controller => 'admin', :action => 'signout'
    else
      @count= QualificationName .count
      @gad= QualificationName .find(:all,:conditions=>["id!='1'"])
    end
  end
  def add_graduation
    g=params[:graduation]
    @qualification_name=QualificationName.new(params[:graduation])
    if @qualification_name.save
      redirect_to :action=>"graduation"
    else
      @count= QualificationName.count
      @gad= QualificationName.find(:all,:conditions=>["id!='1'"])
      render :action=>"graduation"
    end
  end
  def del_g
    id=params[:id]
    QualificationName.delete_all(:id=> id)
    Educational.delete_all(:qualification_name_id=> id)
    redirect_to :action=>"graduation"
  end
  def edit_g
    if session[:aid]==nil
      redirect_to :controller => 'admin', :action => 'signout'
    else
      @graduation=QualificationName.find(:first,:conditions=>["id=?",params[:id]])
    end
  end
  def update_g
    @qualification_name= QualificationName.find(:first,:conditions=>["id=?",params[:id]])
    if  @qualification_name.update_attributes(params[:graduation])
      redirect_to :action=>"graduation"
    else
      render :action=>"edit_g"
    end
  end
  #############################################################################
  def pg
    if session[:aid]==nil
      redirect_to :controller => 'admin', :action => 'signout'
    else
      @count=  DegreeName.count
      @pg1=  DegreeName.find(:all,:conditions=>["id!='1'"])
    end  
  end
  def add_pg
    @degree_name= DegreeName.new(params[:pg])
    if  @degree_name.save
      redirect_to :action=>"pg"
    else
      @count=  DegreeName.count
      @pg1=  DegreeName.find(:all,:conditions=>["id!='1'"])
      render :action=>"pg"
    end
  end
  def del_pg
    DegreeName.delete_all(:id=> params[:id])
    Educational.delete_all(:degree_name_id=> params[:id])
    redirect_to :action=>"pg"
  end
  def edit_pga
    if session[:aid]==nil
      redirect_to :controller => 'admin', :action => 'signout'
    else
      @pg=DegreeName.find(:first,:conditions=>["id=?",params[:id]])
    end
  end
  def update_pg
    @degree_name=  DegreeName.find(:first,:conditions=>["id=?",params[:id]])
    if  @degree_name.update_attributes(params[:pg])
      redirect_to :action=>"pg"
    else
      render :action=>"edit_pga"
    end
  end
  ############################################################################
  def discipline
    if session[:aid]==nil
      redirect_to :controller => 'admin', :action => 'signout'
    else
      @count= Discipline .count
      @dec= Discipline .find(:all,:conditions=>["id!='1'"])
    end
  end
  def add_deca
    @discipline=Discipline.new(params[:pg1])
    if @discipline.save
      redirect_to :action=>"discipline"
    else
      @count= Discipline .count
      @dec= Discipline .find(:all,:conditions=>["id!='1'"])
      render :action=>"discipline"
    end
  end
  def del_dec
    id=params[:id]
    Discipline.delete_all(:id=> id)
    Educational.delete_all(:discipline_id=> params[:id])
    redirect_to :action=>"discipline"
  end
  def edit_dec
    if session[:aid]==nil
      redirect_to :controller => 'admin', :action => 'signout'
    else
      @dec=Discipline.find(:first,:conditions=>["id=?",params[:id]])
    end
  end
  def update_dec
    @discipline= Discipline .find(:first,:conditions=>["id=?",params[:id]])
    if @discipline.update_attributes(params[:dec])
      redirect_to :action=>"discipline"
    else
      render :action=>"edit_dec"
    end
  end
  ###########################################################################
  def university
    if session[:aid]==nil
      redirect_to :controller => 'admin', :action => 'signout'
    else
      @count= University .count
      @university1= University.find(:all,:conditions=>["id!='1'"])
    end
  end
  def add_u
    @university=University.new(params[:uni])
    if @university.save
      redirect_to :action=>"university"
    else
      @count= University .count
      @university1= University.find(:all,:conditions=>["id!='1'"])
      render :action=>"university"
    end
  end
  def del_u
    id=params[:id]
    University.delete_all(:id=> id)
    Educational.delete_all(:university_id=> params[:id])
    redirect_to :action=>"university"
  end
  def edit_university
    if session[:aid]==nil
      redirect_to :controller => 'admin', :action => 'signout'
    else
      @university= University.find(:first,:conditions=>["id=?",params[:id]])
    end  
  end
  def update_university
    @university= University.find(:first,:conditions=>["id=?",params[:id]])
    if @university.update_attributes(params[:university])
      redirect_to :action=>"university"
    else
      render :action=>"edit_university"
    end
    
  end
  def signout
    session[:aid]=nil
    session[:id]=nil
    session[:status]=nil
    #render :template => 'account/index'
    redirect_to :controller => 'account', :action => 'index'
  end
  def back
    redirect_to :action=>"index"
  end
  def edit_all
    id=params[:id]
    session[:id]=id
    session[:status]="admin"
    redirect_to :controller => 'admin', :action => 'index'
  end
  def delete_user
    id= params[:id]
    User.delete_all(:id=> id)
    Professional.delete_all(:user_id=>id)
    UserFramework.delete_all(:user_id=>id)
    UserDatabase.delete_all(:user_id=>id)
    UserLanguge.delete_all(:user_id=>id)
    UserOperatingSystem.delete_all(:user_id=>id)
    UserWebtool.delete_all(:user_id=>id)
    Educational.delete_all(:user_id=>id)
    ProfessionalSummary.delete_all(:user_id=>id)
    ReferanceWork.delete_all(:user_id=>id)
    RoleResponsibility.delete_all(:user_id=>id)
    Certification.delete_all(:user_id=>id)
    CoreCompetency.delete_all(:user_id=>id)
    redirect_to :action=>"view_all"
  end
  ##################################################################################### Edit_user_Details###########################################################################
  def search
  end
  
  def search_name
    if session[:aid]==nil
      redirect_to :controller => 'admin', :action => 'signout'
    else
      name=params[:name]
      uname=name.upcase
      lname=name.downcase
      cname=name.capitalize
      #render :text=>cname
      #      length=name.length
      #      sub_name=name[0..0]
      #@results = User.find(:all, :conditions => ['username LIKE ?', params[:uname]+'%' ])

      @data=User.paginate(:all,:conditions=>["status='user'"&& "fname LIKE? || fname LIKE?|| fname LIKE?",'%'+uname+'%','%'+lname+'%','%'+cname+'%'] ,:per_page => 15, :page => params[:page])
      @data_len=User.count(:conditions=>["status='user'"&& "fname LIKE?",'%'+name+'%'])
      if @data_len==0
        flash[:msg]="No Match Found"
      end
   end
  end

  def search_tech

  end
  def search_techa
    name=params[:name]
    #render :text=>name.upcase
    #render :text=>name.downcase
    @name=name
    #name='%'+name+'%'
    #############################################################################################
    @languge_name=Languge.find(:first,:conditions=>["languge LIKE?",'%'+name+'%'])
    @framework_name= Framework.find(:first,:conditions=>["framework LIKE?",'%'+name+'%'])
    @os_name=OperatingSystem.find(:first,:conditions=>["name LIKE?",'%'+name+'%'])
    @wt_name=WebTool.find(:first,:conditions=>["web_tool LIKE?",'%'+name+'%'])
    @db_name=Database.find(:first,:conditions=>["`database` LIKE?",'%'+name+'%'])
    @lang_count=User.count(:joins=>'LEFT OUTER JOIN user_languges ON users.id = user_languges.user_id',:conditions=>['languge_id=?',@languge_name])
    @fm_count=User.count(:joins=>'LEFT OUTER JOIN user_frameworks ON users.id = user_frameworks.user_id',:conditions=>['framework_id=?',@framework_name])
    @os_count=User.count(:joins=>'LEFT OUTER JOIN user_operating_systems ON users.id = user_operating_systems.user_id',:conditions=>['operating_system_id=?',@os_name])
    @wt_count=User.count(:joins=>'LEFT OUTER JOIN user_webtools ON users.id = user_webtools.user_id',:conditions=>['web_tool_id=?',@wt_name])
    @db_count=User.count(:joins=>'LEFT OUTER JOIN user_databases ON users.id = user_databases.user_id',:conditions=>['database_id=?',@db_name])
    @cer_count=User.count(:joins=>'LEFT OUTER JOIN certifications ON users.id= certifications.user_id',:conditions=>['title LIKE?',name+'%'])
    # render :text=>@cer_count and return
    @data=User.find_by_sql ["SELECT users.id,users.fname,users.lname,users.phone_no,users.email FROM users LEFT OUTER JOIN user_languges ON users.id=user_languges.user_id AND users.status!='admin' JOIN languges ON languges.id = user_languges.languge_id and languges.languge like?
                     union SELECT users.id,users.fname,users.lname,users.phone_no,users.email FROM users LEFT OUTER JOIN user_frameworks ON users.id=user_frameworks.user_id AND users.status!='admin' JOIN frameworks ON frameworks.id=user_frameworks.framework_id and frameworks.framework like?
                     union SELECT users.id,users.fname,users.lname,users.phone_no,users.email FROM users LEFT OUTER JOIN user_operating_systems ON users.id=user_operating_systems.user_id And users.status!='admin' JOIN operating_systems ON operating_systems.id=user_operating_systems.operating_system_id and operating_systems.name like?
                     union SELECT users.id,users.fname,users.lname,users.phone_no,users.email FROM users LEFT OUTER JOIN user_webtools ON users.id=user_webtools.user_id and users.status!='admin' JOIN web_tools ON web_tools.id=user_webtools.web_tool_id and web_tools.web_tool like?
                     union SELECT users.id,users.fname,users.lname,users.phone_no,users.email FROM users LEFT OUTER JOIN user_databases ON users.id=user_databases.user_id and users.status!='admin' JOIN `databases` ON `databases`.id=user_databases.database_id and `databases`.database like?
                     union SELECT users.id,users.fname,users.lname,users.phone_no,users.email FROM users JOIN certifications on users.id=certifications.user_id and users.status!='admin' and certifications.title like? ",'%'+name+'%','%'+name+'%','%'+name+'%','%'+name+'%','%'+name+'%','%'+name+'%']

   end
end
