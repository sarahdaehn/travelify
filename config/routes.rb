Rails.application.routes.draw do
  resources :createcities

  root  "createcities#index"
  
  # get 'about' , to: 'cities#about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "cities#home"
end

