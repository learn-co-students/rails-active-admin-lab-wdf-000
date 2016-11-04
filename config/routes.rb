Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :artists, except: [:new, :update, :create, :edit]
  resources :songs, except: [:new, :update, :create, :edit]

  root to: 'artists#index'
end
