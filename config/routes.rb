Rails.application.routes.draw do
  devise_for :users
  get 'cars/index'
  # get '/addcar', to: "cars#addcar", as: "add_new_car"
  get '/about', to: 'cars#about'
  get '/edit', to: 'cars#index'
  get '/new', to: 'cars#contact'
  get '/details/id', to: 'cars#show', as: "car_details"
  get '/add' , to: "cars#add"
  post '/add', to: 'cars#add',as: "add_new_car"
  # Define your application ro utes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  root "cars#index"
end
