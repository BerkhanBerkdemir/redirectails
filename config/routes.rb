Rails.application.routes.draw do
  root 'landings#index'

  get '/:url_id', to: 'url#redirect_user', as: 'redirect'
  get '/s/:url_id', to: 'url#show', as: 'settings'
  post '/', to: 'url#generate', as: 'generate'
end
