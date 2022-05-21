Rails.application.routes.draw do
  get 'categories/controller'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'fishingboats', to: 'categories#fishingboats'
end
