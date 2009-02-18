ActionController::Routing::Routes.draw do |map|
  map.resources :contacts

  map.root :controller => "desktop", :action=>'index'

  map.connect 'code/show/*path', :controller => 'code', :action => 'show'
  
  map.connect 'plugin/get/*path', :controller => 'plugin', :action => 'get'

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action.:format'   # <<-- INCLUDE THIS ROUTE TOO!
  map.connect ':controller/:action/:id.:format'
end
