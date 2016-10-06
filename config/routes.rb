Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # resources :artists, :songs

  #expect(get: '/artists/new').to route_to('artists#show', id: "new")
  get '/artists/:id', to: 'artists#show'
  get '/songs/:id', to: 'songs#show'

  root to: 'artists#index'
end
