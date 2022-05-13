Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api, defaults: { format: :json } do 
    namespace :v1 do
      resources :courses do 
        resources :reservations
      end

      post 'authenticate', to: 'authentication#create'
    end
  end 
end
