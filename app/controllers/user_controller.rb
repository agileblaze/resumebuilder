class UserController < ApplicationController
  include AuthenticatedSystem
  def index    #General
    if session[:id]==nil
      #if !logged_in?
      #render :text=>self.current_user
      redirect_to :controller => 'user', :action => 'signout'
    else
      #@current_action = action_name1
      @user=User.find(:first,:conditions=>["id=?",session[:id]])
    end
  end
  def edit_general
    if session[:id]==nil
      redirect_to :controller => 'user', :action => 'signout'
    else
      @user=User.find(:first,:conditions=>["id=?",params[:id]])
    end
  end
  def update
    if session[:id]==nil
      redirect_to :controller => 'user', :action => 'signout'
    else
      @user=User.find(params[:id])
      respond_to do |format|	
        if @user.update_attributes(params[:user])
          format.html {redirect_to( :action=>"index", :notice => 'User was successfully updated.')}
        else
          format.html {render :action => "edit_general"}
          format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
        end
      end
     end
  end
  #################################################################################################################################
  def professional
    if session[:id]==nil
      redirect_to :controller => 'user', :action => 'signout'
    else
      @professional=Professional.find(:first,:conditions=>["user_id = ?",session[:id]])
      if @professional == nil
        redirect_to :action=>"new_professional"
      else
        @designation=Designation.find(:first,:conditions=>["id=?", @professional[:designation_id]])
      end
    end
  end

  def edit_professional
    if session[:id]==nil
      redirect_to :controller => 'user', :action => 'signout'
    else
      @professional=Professional.find(:first,:conditions=>["user_id=?",session[:id]])
    end

    
  end
  def update_professional
    @professional=Professional.find(:first,:conditions=>["user_id=?",session[:id]])
    if @professional.update_attributes(params[:professional])
      redirect_to :action=>"professional"
    else
      render :action=>"edit_professional"
    end
    #redirect_to :action=>"professional"
  end
  def new_professional
    if session[:id]==nil
      redirect_to :controller => 'user', :action => 'signout'
    else
          
    end
    #@professional=Professional.new
  end
  def save_professional
    @professional=Professional.new(params[:professional])
    @professional.save
    if @professional.update_attributes(:user_id=>session[:id])
      redirect_to :action=>"professional"
    else
      render :action=> "new_professional"
    end
    
  end
  #####################################################################################################################################################
  def tech_proficiency
    if session[:id]==nil
      redirect_to :controller => 'user', :action => 'signout'
    else
      #@techProficency=TechProficency.find(:first,:conditions=>["user_id=?",session[:id]])
      @lang=UserLanguge.find(:first,:conditions=>["user_id=?",session[:id]])
      @frame=UserFramework.find(:first,:conditions=>["user_id=?",session[:id]])
      @os=UserOperatingSystem.find(:first,:conditions=>["user_id=?",session[:id]])
      @tool=UserWebtool.find(:first,:conditions=>["user_id=?",session[:id]])
      @db=UserDatabase.find(:first,:conditions=>["user_id=?",session[:id]])
      if @lang==nil && @frame==nil && @os==nil && @tool==nil && @db==nil
        redirect_to :action=>"new_tech_proficiency"
      else
        @userlanguge=UserLanguge.find(:all,:conditions=>["user_id=?",session[:id]])
        @userframework=UserFramework.find(:all,:conditions=>["user_id=?",session[:id]])
        @useros=UserOperatingSystem.find(:all,:conditions=>["user_id=?",session[:id]])
        @webtool=UserWebtool.find(:all,:conditions=>["user_id=?",session[:id]])
        @db=UserDatabase.find(:all,:conditions=>["user_id=?",session[:id]])
        @othercount=TechOther.count(:conditions=>["user_id=?",session[:id]])
        @other=TechOther.find(:all,:conditions=>["user_id=?",session[:id]])
      end
    end
  end
  def save_tech
    #@userlanguge=params[:userlanguge]
    #@data=@userlanguge
    UserLanguge.delete_all(:user_id=>session[:id])
    UserFramework.delete_all(:user_id=>session[:id])
    UserOperatingSystem.delete_all(:user_id=>session[:id])
    UserDatabase.delete_all(:user_id=>session[:id])
    UserWebtool.delete_all(:user_id=>session[:id])
    #TechOther.delete_all(:user_id=>session[:id])
    if params[:userlanguge]!= nil
      UserLanguge.delete_all(:user_id=>session[:id])
      @lang=params[:userlanguge][:languge_id]
      @lang.each do |a|
        @userlanguge=UserLanguge.new
        @userlanguge.update_attributes(:user_id=>session[:id],:languge_id=> a)
      end
    end
    if params[:userframework]!=nil
      UserFramework.delete_all(:user_id=>session[:id])
      @framework=params[:userframework][:framework_id]
      @framework.each do |a|
        @userframework=UserFramework.new
        @userframework.update_attributes(:user_id=>session[:id],:framework_id=>a)
      end
    end
    if params[:useroperatingsystem]!=nil
      UserOperatingSystem.delete_all(:user_id=>session[:id])
      @useroperatingsystem=params[:useroperatingsystem][:operating_system_id]
      @useroperatingsystem.each do |a|
        @useroperatingsystem=UserOperatingSystem.new
        @useroperatingsystem.update_attributes(:user_id=>session[:id],:operating_system_id=>a)
      end
    end
    if params[:userdatabase]!=nil
      UserDatabase.delete_all(:user_id=>session[:id])
      @database=params[:userdatabase][:database_id]
      @database.each do |a|
        @userdatabase=UserDatabase.new
        @userdatabase.update_attributes(:user_id=>session[:id],:database_id=>a)
      end
    end
    if params[:userwebtool]!=nil
      UserWebtool.delete_all(:user_id=>session[:id])
      @webtool=params[:userwebtool][:web_tool_id]
      @webtool.each do |a|
        @userwebtool=UserWebtool.new
        @userwebtool.update_attributes(:user_id=>session[:id],:web_tool_id=>a)
      end
    end
    redirect_to :action=>'tech_proficiency'
  end
  def edit_tech_proficiency
    if session[:id]==nil
      redirect_to :controller => 'user', :action => 'signout'
    else
      @userlanguges=UserLanguge.find(:first,:conditions=>["user_id=?",session[:id]])
      @langselects=UserLanguge.find(:all,:conditions=>["user_id=?",session[:id]])
      @fmselects=UserFramework.find(:all,:conditions=>["user_id=?",session[:id]])
      @osselects=UserOperatingSystem.find(:all,:conditions=>["user_id=?",session[:id]])
      @webtoolselects=UserWebtool.find(:all,:conditions=>["user_id=?",session[:id]])
      @dbselects=UserDatabase.find(:all,:conditions=>["user_id=?",session[:id]])
      @othercount=TechOther.count(:conditions=>["user_id=?",session[:id]])
      @tech_others=TechOther.find(:all,:conditions=>["user_id=?",session[:id]])
    end
    #@new=Languge.find(:first,:conditions=>["id=?",@data.languge_id])
  end
  def save_other_tech
    @tech_other=TechOther.new(params[:tech_other])
    if @tech_other.save
      @tech_other.update_attributes(:user_id=>session[:id])
      redirect_to :action=>"tech_proficiency"
    else
      @lang=UserLanguge.find(:first,:conditions=>["user_id=?",session[:id]])
      @frame=UserFramework.find(:first,:conditions=>["user_id=?",session[:id]])
      @os=UserOperatingSystem.find(:first,:conditions=>["user_id=?",session[:id]])
      @tool=UserWebtool.find(:first,:conditions=>["user_id=?",session[:id]])
      @db=UserDatabase.find(:first,:conditions=>["user_id=?",session[:id]])
      if @lang==nil && @frame==nil && @os==nil && @tool==nil && @db==nil
        redirect_to :action=>"new_tech_proficiency"
      else
        @userlanguge=UserLanguge.find(:all,:conditions=>["user_id=?",session[:id]])
        @userframework=UserFramework.find(:all,:conditions=>["user_id=?",session[:id]])
        @useros=UserOperatingSystem.find(:all,:conditions=>["user_id=?",session[:id]])
        @webtool=UserWebtool.find(:all,:conditions=>["user_id=?",session[:id]])
        @db=UserDatabase.find(:all,:conditions=>["user_id=?",session[:id]])
        @othercount=TechOther.count(:conditions=>["user_id=?",session[:id]])
        @other=TechOther.find(:all,:conditions=>["user_id=?",session[:id]])
        render :action=>"tech_proficiency"
      end
    end
    
  end
  def edit_tech_other
    id=params[:id]
    @id=id
    @tech_other=TechOther.find(id)
    render :partial=> "edit_tech_other"
  end
  def update_tech_other
    id=params[:id]
    @tech_other=TechOther.find(id)
    if @tech_other.update_attributes(params[:tech_other])
        redirect_to :action=>"tech_proficiency"
    else
        @userlanguge=UserLanguge.find(:all,:conditions=>["user_id=?",session[:id]])
        @userframework=UserFramework.find(:all,:conditions=>["user_id=?",session[:id]])
        @useros=UserOperatingSystem.find(:all,:conditions=>["user_id=?",session[:id]])
        @webtool=UserWebtool.find(:all,:conditions=>["user_id=?",session[:id]])
        @db=UserDatabase.find(:all,:conditions=>["user_id=?",session[:id]])
        @othercount=TechOther.count(:conditions=>["user_id=?",session[:id]])
        @other=TechOther.find(:all,:conditions=>["user_id=?",session[:id]])
        render :action=>"tech_proficiency"
    end
     
  end
  def delete_tech_other
    id=params[:id]
    TechOther.delete(id)
    redirect_to :action=>"tech_proficiency"
  end
  ################################################################################################################
  def educational
    if session[:id]==nil
      redirect_to :controller => 'user', :action => 'signout'
    else
      @count=Educational.count(:conditions=>["user_id=?",session[:id]])
      @data=Educational.find(:all,:conditions=>["user_id=?",session[:id]])
   end
  end
  def new_educational
    if session[:id]==nil
      redirect_to :controller => 'user', :action => 'signout'
    else
    end
  end
  def save_sslc
    @current_action = action_name
    Educational.delete_all(:user_id=>session[:id],:qualification=>'sslc')
    @educational=Educational.new(params[:educational])
    if @educational.save
      @educational.update_attributes(:user_id=>session[:id],:qualification=>'sslc',:name=>'SSLC')
      redirect_to :action=>'educational'
    else
      render :action=>"new_educational"
    end
   
  end
  def edit_sslc
    if session[:id]==nil
      redirect_to :controller => 'user', :action => 'signout'
    else
      @educational=Educational.find(:first,:conditions=>["user_id=? and qualification='sslc'",session[:id]])
    end
  end
  def save_graduation
    if params[:educational][:graduation_id]=='1'
      flash[:msg]="Not Saved,Please select a name of Graduation"
      if params[:msg]=='new'
        redirect_to :action=>'new_educational'
      else
        redirect_to :action=>'edit_graduation'
      end
    else if params[:educational][:discipline_id ]=='1'
        flash[:msg]="Not Saved,Please select a Discipline of Graduation"
        if params[:msg]=='new'
          redirect_to :action=>'new_educational'
        else
          redirect_to :action=>'edit_graduation'
        end
      else if params[:educational][:university_id ]=='1'
          flash[:msg]="Not Saved,Please select a University of Graduation"
          if params[:msg]=='new'
            redirect_to :action=>'new_educational'
          else
            redirect_to :action=>'edit_graduation'
          end

        else
          Educational.delete_all(:user_id=>session[:id],:qualification=>'graduation')
          @educational=Educational.new(params[:educational])
          @educational.save
          @educational.update_attributes(:user_id=>session[:id],:qualification=>'graduation')
          redirect_to :action=>'educational'
        end
      end
    end
  end
  def edit_graduation
    if session[:id]==nil
      redirect_to :controller => 'user', :action => 'signout'
    else
      @educational=Educational.find(:first,:conditions=>["user_id=? and qualification='graduation'",session[:id]])
    end
  end
  def save_plus2
    Educational.delete_all(:user_id=>session[:id],:qualification=>'plus2')
    @educational=Educational.new(params[:educational])
    @educational.save
    @educational.update_attributes(:user_id=>session[:id],:qualification=>'plus2',:name=>'PLUS-2')
    redirect_to :action=>'educational'
  end
  def edit_plus2
    if session[:id]==nil
      redirect_to :controller => 'user', :action => 'signout'
    else
      @educational=Educational.find(:first,:conditions=>["user_id=? and qualification='plus2'",session[:id]])
    end
  end
  def save_pg
    if params[:educational][:pg_id]=='1'
      flash[:msg]="Not Saved,Please select a name of PG"
      if params[:msg]=='new'
        redirect_to :action=>'new_educational'
      else
        redirect_to :action=>'edit_pg'
      end

    else if params[:educational][:discipline_id ]=='1'
        flash[:msg]="Not Saved,Please select a Discipline of PG"
        if params[:msg]=='new'
          redirect_to :action=>'new_educational'
        else
          redirect_to :action=>'edit_pg'
        end
      else if params[:educational][:university_id ]=='1'
          flash[:msg]="Not Saved,Please select a University of PG"
          if params[:msg]=='new'
            redirect_to :action=>'new_educational'
          else
            redirect_to :action=>'edit_pg'
          end

        else
          Educational.delete_all(:user_id=>session[:id],:qualification=>'pg')
          @educational=Educational.new(params[:educational])
          if @educational.save
            @educational.update_attributes(:user_id=>session[:id],:qualification=>'pg')
            redirect_to :action=>'educational'
          else
            render :action=>"new_educational"
          end
         
        end
      end
    end
  end
  def edit_pg
    if session[:id]==nil
      redirect_to :controller => 'user', :action => 'signout'
    else
      @educational=Educational.find(:first,:conditions=>["user_id=? and qualification='pg'",session[:id]])
    end
  end
  #############################################################################################################################
  def professional_summary
    if session[:id]==nil
      redirect_to :controller => 'user', :action => 'signout'
    else
      @psdata=ProfessionalSummary.find(:all,:conditions=>["user_id=?",session[:id]],:order=>'priority asc')
      @count=ProfessionalSummary.count(:conditions =>["user_id=?",session[:id]])
    end
  end
  def save_proffesional_summary
    @professional_summary=ProfessionalSummary.new(params[:professionalsummaries])
    if @professional_summary.save
      @professional_summary.update_attributes(:user_id=>session[:id])
      redirect_to :action=>"professional_summary"
    else
      @psdata=ProfessionalSummary.find(:all,:conditions=>["user_id=?",session[:id]],:order=>'priority asc')
      @count=ProfessionalSummary.count(:conditions =>["user_id=?",session[:id]])
      render :action=>"professional_summary"
    end
    
  end
  def delete_proffesional_summary
    @data=ProfessionalSummary.find(params[:id])
    @data.delete
    redirect_to :action=>"professional_summary"
  end
  #############################################################################################################################
  #REFERANCE WORK
  def referance_work
    if session[:id]==nil
      redirect_to :controller => 'user', :action => 'signout'
    else
      @rfworkdata=ReferanceWork.find(:all,:conditions=>["user_id=?",session[:id]],:order=>'priority asc')
      @count=ReferanceWork.count(:conditions=>["user_id=?",session[:id]])
    end
  end
  def save_referance_work
    @referance_work=ReferanceWork.new(params[:referancework])
    if @referance_work.save
      @referance_work.update_attributes(:user_id=>session[:id])
      redirect_to :action=>"referance_work"
    else
      @rfworkdata=ReferanceWork.find(:all,:conditions=>["user_id=?",session[:id]],:order=>'priority asc')
      @count=ReferanceWork.count(:conditions=>["user_id=?",session[:id]])
      render :action=>"referance_work"
    end
   
  end
  def delete_referance_work
    @data=ReferanceWork.find(params[:id])
    @data.delete
    redirect_to :action=>"referance_work"
  end
  def edit_referance_work
    if session[:id]==nil
      redirect_to :controller => 'user', :action => 'signout'
    else
      @referancework=ReferanceWork.find(params[:id])
      @id=params[:id]
    end
  end
  def update_referance_work
    @referancework=ReferanceWork.find(params[:id])
    @referancework.update_attributes(params[:referancework])
    redirect_to :action=>"referance_work"
  end
  ##############################################################################################################################
  def role_res
    if session[:id]==nil
      redirect_to :controller => 'user', :action => 'signout'
    else
      @roledata=RoleResponsibility.find(:all,:conditions=>["user_id=?",session[:id]],:order=>'priority asc')
      @count=RoleResponsibility.count(:conditions=>["user_id=?",session[:id]])
    end
  end
  def save_role_res
    @role_responsibility=RoleResponsibility.new(params[:role_responsibility])
    respond_to do |format|	
      if @role_responsibility.save
        @role_responsibility.update_attributes(:user_id=>session[:id])
        format.html { redirect_to :action=>"role_res" }
      else
        @roledata=RoleResponsibility.find(:all,:conditions=>["user_id=?",session[:id]],:order=>'priority asc')
        @count=RoleResponsibility.count(:conditions=>["user_id=?",session[:id]])
        format.html { render :action=>"role_res"}
        format.xml  { render :xml => @role_responsibility.errors, :status => :unprocessable_entity }
      end
    end
  end
  def delete_role_res
    @data=RoleResponsibility.find(params[:id])
    @data.delete
    redirect_to :action=>"role_res"
  end
  ###############################################################################################################################
  def certification
    if session[:id]==nil
      redirect_to :controller => 'user', :action => 'signout'
    else
      @count=Certification.count(:conditions=>["user_id=?",session[:id]])
      @cer=Certification.find(:all,:conditions=>["user_id=?",session[:id]],:order=>'priority asc')
    end
  end
  def save_certification
    @certification=Certification.new(params[:certification])
    if @certification.save
      @certification.update_attributes(:user_id=>session[:id])
      redirect_to :action=>"certification"
    else
      @count=Certification.count(:conditions=>["user_id=?",session[:id]])
      @cer=Certification.find(:all,:conditions=>["user_id=?",session[:id]],:order=>'priority asc')
      render :action=>"certification"
    end
  end
  def delete_certification
    @data=Certification.find(params[:id])
    @data.delete
    redirect_to :action=>"certification"
  end
  def edit_certification
    if session[:id]==nil
      redirect_to :controller => 'user', :action => 'signout'
    else
      @cer=Certification.find(params[:id])
      @id=params[:id]
    end
  end
  def update_certification
    @certification=Certification.find(params[:id])
    if @certification.update_attributes(params[:cer])
      redirect_to :action=>"certification"
    else
      @id=params[:id]
      @cer=Certification.find(params[:id])
      render :action=>"edit_certification"
    end
 
  end
 ############################################################################################################################
  def core_competency
    if session[:id]==nil
      redirect_to :controller => 'user', :action => 'signout'
    else
      @count=CoreCompetency.count(:conditions=>["user_id=?",session[:id]])
      @core=CoreCompetency.find(:all,:conditions=>["user_id=?",session[:id]],:order=>'priority asc')
    end
  end
  def save_core_competency
    @core_competency=CoreCompetency.new(params[:core_competency])
    if @core_competency.save
      @core_competency.update_attributes(:user_id=>session[:id])
      redirect_to :action=>"core_competency"
    else
      @count=CoreCompetency.count(:conditions=>["user_id=?",session[:id]])
      @core=CoreCompetency.find(:all,:conditions=>["user_id=?",session[:id]],:order=>'priority asc')
      render :action=>"core_competency"
    end
  end
  def delete_core_competency
    @data=CoreCompetency.find(params[:id])
    @data.delete
    redirect_to :action=>"core_competency"
  end
  def signout
    session[:id]=nil
    session[:name]=nil
    #render :template => 'account/index'
    redirect_to :controller => 'account', :action => 'index'
  end
  def upload_resume
    #@mugshot = Mugshot.new
    @user_resume=UserResume.new
    #@data=UserResume(:first,conditions=>["user_id=?",session[:id]])
  end
  def save_reume
    @user_resume= UserResume.new(params[:user_resume])
    @user_resume.user_id=session[:id]
    #@check=UserResume.find(:all,:conditions=>["user_id=?",session[:id]])
    UserResume.delete_all(:user_id=> session[:id])
    if @user_resume.save
      #render :text=> @user_resume.created_at
      flash[:notice] = 'Attachment was successfully created.'
      #redirect_to attachable_url(@attachable_file)
      redirect_to :action=>"index"
    else
      render :text=>"Not saved"
    end
  end
  def download_resume
    #@user_resume= UserResume.new(params[:user_resume])
    @user_data=UserResume.find(:first,:conditions=>["user_id=?",session[:id]])
    #render :text=>"#{RAILS_ROOT}/public"+@user_data.public_filename
    send_file("#{RAILS_ROOT}/public"+@user_data.public_filename,
      :disposition => 'attachment',
      :encoding => 'utf8',
      :type => @user_data.content_type,
      :filename => URI.encode(@user_data.filename))
  end
  ######################################################## change password ######################################################################################
  def change_pwd
  end
  def done_pwd
    @user=User.find(session[:id])
    @new=params[:pnew]
    @old=params[:old]
    @c=params[:confirm_new]
    #render :text=>@user.id
    check=check(@new,@c)
    if check
      if @a=User.authenticate(@user.login, params[:old])!= nil
        @l=@user.login
        @salt= Digest::SHA1.hexdigest("--#{Time.now.to_s}--#{@l}--")
        @enc=Digest::SHA1.hexdigest("--#{@salt}--#{@new}--")
        if @user.update_attributes(:salt=>@salt,:crypted_password=>@enc)
          #render :text=>"UPDATED"
          flash[:msg]="password changed"
          redirect_to :action=>"change_pwd"
        else
          render :text=>"not updated"
        end
      else
        flash[:msg]="Pls insert correct password"
        redirect_to :action=>"change_pwd"
      end
    else
      redirect_to :action=>"change_pwd"
    end
  end
  def check(p,c)
    if p==c
      if p.length<6
        flash[:msg]="Length of password is too short"
        return false
      end
      return true
    else
      flash[:msg]="password mismatch"
      return false
    end

  end
  def encrypt_password(login)
    #return if password.blank?
    salt = Digest::SHA1.hexdigest("--#{Time.now.to_s}--#{login}--")
    #self.crypted_password = encrypt(password)
    return salt
  end
  #################################################################################################################################################################
  def save_edu
#    if params[:educational][:qualification_name_id]=='1'
#      flash[:msg]="Qualification can't be blank"
#      redirect_to :action=>"educational"
#    else
      @educational=Educational.new(params[:educational])
      if @educational.save
         @educational.update_attributes(:user_id=>session[:id])
         redirect_to :action=>"educational"
      else
         @count=Educational.count(:conditions=>["user_id=?",session[:id]])
         @data=Educational.find(:all,:conditions=>["user_id=?",session[:id]])
         render :action=>"educational"
      end
      
    #end
  end
  def  delete_edu
    id=params[:id]
    Educational.delete_all(:id=>id)
    redirect_to :action=>"educational"
  end
 def edit_edu
    @id=params[:id]
    @educational=Educational.find(:first,:conditions=>["id=?",@id])
    render :partial=> "edit_edu"
  end
  def update_edu
    @educational=Educational.find(params[:id])
   if @educational.update_attributes(params[:educational])
        redirect_to :action=>"educational"
   else
      @count=Educational.count(:conditions=>["user_id=?",session[:id]])
      @data=Educational.find(:all,:conditions=>["user_id=?",session[:id]])
      render :action=>"educational"
    end
   
   #  end
  end
  
end
