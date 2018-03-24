Rails.application.routes.draw do
  root 'landings#index'

  # Admin dashbaoard routes
  get '/admin', to: 'admin#dashboard', as: 'admin'
  delete '/admin/:id', to: 'admin#destroy', as: :delete

  # Public routes
  get '/:url_id', to: 'url#redirect_user', as: 'redirect'
  get '/s/:url_id', to: 'url#show', as: 'settings'
  post '/', to: 'url#generate', as: 'generate'
  
end
