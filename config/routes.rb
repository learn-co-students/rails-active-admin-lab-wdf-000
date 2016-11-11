Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # resources :artists, :songs
  get '/artists/new' => "artists#show"
  get '/artists/edit' => "artists#show"

  get '/songs/new' => "songs#show"
  get '/songs/edit' => "songs#show"

  root to: 'artists#index'
end
