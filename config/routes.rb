Rails.application.routes.draw do
  root "projects#index"
  
  #devise_for :users
  #root to: "accounts#index"

  resources :projects, :accounts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
