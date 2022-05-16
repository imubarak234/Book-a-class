Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  namespace :api, defaults: { format: :json } do 
    namespace :v1 do
      resources :courses do 
        resources :reservations
        get '/start_dates', to: 'start_dates#index'
      end

      post 'authenticate', to: 'authentication#create'
    end
  end 
end
