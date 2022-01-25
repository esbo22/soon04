Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "clients#index"

  delete "clients/:id", to: "clients#destroy"

  resources :clients do
    resources :inventaires
  end

  resources :clients do
    resources :factures
  end
end
