Rails.application.routes.draw do
  match "javascripts/routes", :to => "js_router/routes#index"
end
