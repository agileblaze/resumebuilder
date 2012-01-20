class AccountController < ApplicationController
  # Be sure to include AuthenticationSystem in Application Controller instead
  include AuthenticatedSystem
  # If you want "remember me" functionality, add this before_filter to Application Controller
  before_filter :login_from_cookie
  # say something nice, you goof!  something sweet.
  def index
    redirect_to(:action => 'login') #unless logged_in? || User.count > 0
  end

  def login
    flash[:notice]=''
    self.current_user = User.authenticate(params[:login], params[:password])
    if session[:id]!=nil
	typo = 1
      redirect_to :controller => 'user', :action => 'index'
    else if session[:aid]!=nil
 	typo  = 2  
     redirect_to :controller => 'admin', :action => 'index'
    else if logged_in?
     if self.current_user[:status]== "admin"
 	typo = 3
        session[:aid]=self.current_user[:id]
       redirect_back_or_default(:controller => '/admin', :action => 'index')
      else
        typo = 4
        session[:p]=self.current_user[:crypted_password]
        session[:id]=self.current_user[:id]
        session[:name]=self.current_user[:login]
        session[:email]=self.current_user[:email]
        redirect_back_or_default(:controller => '/user', :action => 'index')
      end
    end
    end
    end
   end
  #Save user table
  def signup
    @user = User.new(params[:user])
    return unless request.post?
    @user.save!
    self.current_user = @user
    redirect_back_or_default(:controller => '/account', :action => 'index')
    flash[:notice] = "Thanks for signing up!"
  rescue ActiveRecord::RecordInvalid
    render :action => 'signup'
  end
  
  def logout
    self.current_user.forget_me if logged_in?
    cookies.delete :auth_token
    reset_session
    flash[:notice] = "You have been logged out."
    redirect_back_or_default(:controller => '/account', :action => 'index')
  end
end
