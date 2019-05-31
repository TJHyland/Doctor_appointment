Rails.application.routes.draw do
  
  root 'doctors#index'

  resources :users do
    resources :appointments
  end
  
  resources :doctors do
    resources :appointments
  end
end
