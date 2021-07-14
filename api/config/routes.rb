Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post 'authenticate', to: 'authentication#authenticate'
  resources :type_users
  resources :users
  resources :area_works
  resources :locations
  resources :employees
  resources :courses do
    collection do
      get 'assigment' => 'courses#assigment'
    end
  end
  resources :settings
  resources :busines
  resources :licenses
  resources :reports






end
