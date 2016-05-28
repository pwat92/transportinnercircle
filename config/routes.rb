Rails.application.routes.draw do
  resources :quotes, :only => [:new, :create]

  mount RailsAdmin::Engine => '/admin_panel', as: 'rails_admin'
  devise_for :admins
  root 'home#index'
end
