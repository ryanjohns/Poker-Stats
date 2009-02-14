ActionController::Routing::Routes.draw do |map|
  # The priority is based upon order of creation: first created -> highest priority.
  
  # Sample of regular route:
  # map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  # map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # You can have the root of your site routed by hooking up '' 
  # -- just remember to delete public/index.html.
  # map.connect '', :controller => "welcome"

  map.connect '', :controller => 'series', :action => 'current'

  map.view_players 'players', :controller => 'player', :action => 'index'

  map.edit_player 'edit-player/:id', :controller => 'player', :action => 'edit', :id => nil

  map.start_tournament 'start-tournament', :controller => 'tournament', :action => 'start_tournament'

  map.result_entry 'enter-result/:id', :controller => 'result', :action => 'enter_result', :id => nil

  map.connect 'get-fees-paid-for-player/:series_id/:player_id', :controller => 'result', :action => 'get_fees_paid_for_player', :series_id => nil, :player_id => nil

  # Allow downloading Web Service WSDL as a file with an extension
  # instead of a file named 'wsdl'
  map.connect ':controller/service.wsdl', :action => 'wsdl'

  # Install the default route as the lowest priority.
  map.connect ':controller/:action/:id.:format'
  map.connect ':controller/:action/:id'
end
