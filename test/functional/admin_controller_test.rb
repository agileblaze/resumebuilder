#require 'test_helper'
require File.dirname(__FILE__) + '/../test_helper'
class AdminControllerTest < ActionController::TestCase
  # Replace this with your real tests.
#fixtures :users
  def setup
   @controller = AdminController.new
   @request = ActionController::TestRequest.new
   @response = ActionController::TestResponse.new
 end
 test "should get index" do
    # session[:aid]='1'
     get :index
    assert_redirected_to :action => "signout"
    #assert_equal "Please log in" , flash[:notice]
  
    #get(:show, {'id' => "12"}, {'user_id' => 5})
    #assert_not_nil assigns(:posts)
  end
  test "signout" do
     get :signout
   #assert_response :success
   assert_redirected_to :controller => "account",:action=>"index"
 #  get(:index ,nil,{'aid'=>2})
 #   assert_response :success

  end
  test "view_render" do
   get(:index ,nil,{'aid'=>2}) 
   #get(:view)
    assert_equal 2,session[:aid]
    assert_response :success
  end
  test "view_url" do
    get(:index)
   assert_equal "http://test.host/admin/signout", redirect_to_url
  end
  test "form_tag" do
   get(:edit_lang ,nil,{'aid'=> 1})
    assert_response :success
     #tag = find_tag :tag => "test_form_tag" ,:attributes => { :action => "/admin/update_lang/31" }
    # assert_equal "" , tag.attributes["languge"]
     assert_select "title","Administrator"
  end
  test "form_fixtures" do
   # aaron
   #get :index, {}, { :aid => users(:aaron).id }
   assert_response :success
   #assert_equal 2,users(:aaron).id
   #assert_template "index"
  end
  test "form_tag_of" do
    get(:edit_lang ,nil,{'aid'=> 1})
    assert_response :success
    assert_tag "input", :attributes => {:id => "languge_languge", :type => "text"}
    assert_tag "form", :attributes => {:action => "/admin/update_lang?method=get", :method=>"post"}
  end
 test "post_admin" do
  #post :update_lang, :admin=>{ :languge=> "hai",:id=>1}
  #user=assigns(:admin)
  #assert_not_nil user
  post :add_lang,:admin=>{:languge=>"hai"}
  a=assigns(:admin)
  assert_nil a
 end
end
