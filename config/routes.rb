ActionController::Routing::Routes.draw do |map|
  map.create_contact '/pages/:id/contact', :controller => 'form_batchbook', :action => 'create'
end