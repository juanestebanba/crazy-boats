Rails.application.routes.draw do
  get 'categories/controller'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :boats, only: %i[index show new create] do
    resources :bookings, only: [:create, :new]
  end
  get 'fishing_boats', to: "categories#fishing_boats"
  get 'party_boats', to: "categories#party_boats"
  get 'yachts', to: "categories#yachts"

  # get '/boats/:id/booking/:id', to: "bookings#show"
end

# /	GET	pages	home
# /boats	GET	boats	index
# /boats/:id	GET	boats	show
# users/sign_in	POST	sessions	create
# /boats/:id/booking/new	GET	boats	new
# /boats/:id/booking	POST	boats	create
# /boats/:id/booking/:id	GET	bookings	show
# users/:id/bookings	GET	bookings	my_bookings
# /boats/new	GET	boats	new
# /boats	POST	boats	create
