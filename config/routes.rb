Rails.application.routes.draw do
  root "loans#index"

  resources :loans
  resources :librarians
  resources :readers
  resources :books
  resources :categories
end
