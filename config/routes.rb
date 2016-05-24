Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin_panel', as: 'rails_admin'
  devise_for :admins
  root 'home#index'
end
