Rails.application.routes.draw do
  devise_for :admin
  resources :families
  resources :children
  resources :checks  
  
  get "/sign_in", to: "sessions#new", as: :sign_in
  post "/sign_in", to: "sessions#create", as: :create_sign_in
  get "/sign_out", to: "sessions#destroy", as: :sign_out

  root 'checks#new'
end
