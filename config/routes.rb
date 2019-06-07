Rails.application.routes.draw do
  
  root 'doctors#index'

  resources :users do
    resources :appointments, only: [:index, :new, :create, :destroy]
  end
  
  resources :doctors
end
