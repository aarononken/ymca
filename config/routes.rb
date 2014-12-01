Rails.application.routes.draw do
  resources :families
  resources :children
  resources :checks, only: [:new, :create]
  resources :programs
  resources :memberships  
  
  get "/sign_in", to: "sessions#new", as: :sign_in
  post "/sign_in", to: "sessions#create", as: :create_sign_in
  get "/sign_out", to: "sessions#destroy", as: :sign_out

  root 'sessions#new'
end
