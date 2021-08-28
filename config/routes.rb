Rails.application.routes.draw do
  resources :short_links
  get '/', to: 'short_links#new'
  get '/:token', to: 'short_links#redirect'
  get '/:token/info', to: 'short_links#info'
end
