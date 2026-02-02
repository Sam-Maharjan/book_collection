Rails.application.routes.draw do
  root "user_books#index"
  resources :books
  resources :users
  resources :user_books
end
