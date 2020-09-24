Rails.application.routes.draw do
  devise_for :users

  resources :products, only: [:index, :new, :create, :show ]

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get    "products/:product_id/rentals/new",    to: "rentals#new",  as: :new_product_rental
  post   "products/:product_id/rentals/",       to: "rentals#create", as: :product_rentals
  get    "rentals/:id",                         to: "rentals#show", as: :rental
  get    "rentals/:id/edit/",                   to: "rentals#edit", as: :review 
  patch  "rentals/:id/",                        to: "rentals#update"
end
