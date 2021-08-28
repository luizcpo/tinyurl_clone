Rails.application.routes.draw do
  resources :short_links
  resources :statistics
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
