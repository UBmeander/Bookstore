Rails.application.routes.draw do

  root to: 'books#index'

  resources :charges
  resources :cart_items
  resources :books
  resources :students

  devise_for :students, :controllers => {:registrations => "registrations"}

  put 'books/:id/add_to_cart' => 'books#add_to_cart'
 
end
