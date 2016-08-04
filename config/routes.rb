Rails.application.routes.draw do
  root 'static_pages#index'

  resources :new_driver, :only => [:new, :create]
  resources :quotes, :only => [:new, :create]

  mount RailsAdmin::Engine => '/admin_panel', as: 'rails_admin'
  
  devise_for :admins,
             :controllers => {
               :registrations => "registrations"
             }
  
  as :admin do
    get "/register", to: "registrations#new", as: "register"
  end

  get '/track_shipment', to: 'static_pages#track_shipment'
  get '/photos', to: 'static_pages#photos'
  get '/documents', to: 'static_pages#documents'
  get '/about_us', to: 'static_pages#about_us'
  get '/contact_us', to: 'static_pages#contact_us'

  get '/change_locale/:locale', to: 'settings#change_locale' , as: :change_locale
end
