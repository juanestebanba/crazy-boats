Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :boats do
    resources :bookings, only: [:create, :new]
  end


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
