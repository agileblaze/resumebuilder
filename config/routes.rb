ActionController::Routing::Routes.draw do |map|
  map.resources :admin,:user,:account,:collection=>{:edit_general=>:get,:signup=>:get,:index=>:get,:login=>:get,:update_general=>:get,
                                                    :professional=>:get,:edit_professional=>:get,:new_professional=>:get,
                                                    :tech_proficiency=>:get,:new_tech_proficiency=>:get,:save_tech=>:get,
                                                    :edit_tech_proficiency=>:get,:educational=>:get,:new_educational=>:get,:save_sslc=>:get,:edit_sslc=>:get,
                                                    :save_graduation=>:get,:edit_graduation=>:get,:save_plus2=>:get,:edit_plus2=>:get,:edit_pg=>:get,
                                                    :professional_summary=>:get,:save_proffesional_summary=>:get,:delete_proffesional_summary=>:get,
                                                    :save_referance_work=>:get,:delete_referance_work=>:get,:referance_work=>:get,:edit_referance_work=>:get,
                                                    :update_referance_work=>:get,:role_res=>:get,:save_role_res=>:get,:delete_role_res=>:get,
                                                    :view_all=>:get,:view=>:get,:add_item=>:get,:add_lang=>:get,:add_fm=>:get,:add_db=>:get,
                                                    :add_des=>:get,:add_dec=>:get,:add_g=>:get,:add_pg=>:get,:add_u=>:get,
                                                    :pdf=>:get,:show=>:get,:del_lang=>:get,:del_fm=>:get,:del_os=>:get,:del_db=>:get,
                                                    :del_des=>:get,:del_dec=>:get,:del_g=>:get,:del_pg=>:get,:del_u=>:get,:config=>:get,
                                                    :languge=>:get,:edit_lang=>:get,:update_lang=>:get,
                                                    :framework=>:get,:edit_fm=>:get,:update_fm=>:get,
                                                    :opeating=>:get,:add_os=>:get,:edit_os=>:get,:update_os=>:get,
                                                    :database=>:get,:edit_db=>:get,:update_db=>:get,
                                                    :webtool=>:get,:add_wt=>:get,:del_wt=>:get,:edit_wt=>:get,:update_wt=>:get,
                                                    :designation=>:get,:edit_des=>:get,:update_des=>:get,
                                                    :graduation=>:get,:add_graduation=>:get,:edit_g=>:get,:update_g=>:get,
                                                    :pg=>:get,:edit_pga=>:get,:update_pg=>:get,
                                                    :discipline=>:get,:add_deca=>:get,:edit_dec=>:get,:update_dec=>:get,
                                                    :university=>:get,:edit_university=>:get ,:signout=>:get,:back=>:get,
                                                    :edit_all=>:get,
                                                    :certification=>:get,:save_certification=>:get,:delete_certification=>:get,:edit_certification=>:get,:update_certification=>:get,
                                                    :core_competency=>:get,:save_core_competency=>:get,:delete_core_competency=>:get,
                                                    :upload_resume=>:get,:save_reume=>:get,:download_resume=>:get,:delete_user=>:get,
                                                    :change_pwd=>:get,:done_pwd=>:get,:save_edu=>:get,:delete_edu=>:get,:edit_edu=>:get,
                                                    :save_other_tech=>:get,:delete_tech_other=>:get,:search=>:get,:search_tech=>:get
                                                    }
  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  map.root :controller=>"account"
end
