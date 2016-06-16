Rails.application.routes.draw do
  resources :new_driver, :only => [:new, :create]

  resources :quotes, :only => [:new, :create]

  mount RailsAdmin::Engine => '/admin_panel', as: 'rails_admin'
  devise_for :admins
  root 'static_pages#index'

  get '/track_shipment', to: 'static_pages#track_shipment'
  get '/photos', to: 'static_pages#photos'
  get '/documents', to: 'static_pages#documents'
  get '/about_us', to: 'static_pages#about_us'

  get '/change_locale/:locale', to: 'settings#change_locale' , as: :change_locale
end
