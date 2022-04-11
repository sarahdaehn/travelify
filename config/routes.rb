Rails.application.routes.draw do
  
  get 'about' , to: 'cities#about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "cities#home"
end
