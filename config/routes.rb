if Gem::Version.new("3.0") > Gem::Version.new(Rails.version) then
  #Redmine 1.x
  ActionController::Routing::Routes.draw do |map|
    map.connect '/projects/:id/customers/:action', :controller => 'customers'
  end
else
  #Redmine 2.x
  RedmineApp::Application.routes.draw do
    match '/projects/:id/customers/:action', :controller => 'customers'
  end
end
