Rails.application.routes.draw do |map|  
  match "javascripts/routes" => "js_router/routes#index"
end
