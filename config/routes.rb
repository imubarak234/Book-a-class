Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  devise_for :users, defaults: { format: :json }, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  namespace :api, defaults: { format: :json } do 
    namespace :v1 do
      resources :users,  only: [:index] do
        resources :reservations, only: [:index, :create, :destroy, :show]
      end
      resources :courses, only: [:index, :create, :destroy, :show] do 
        get '/start_dates', to: 'start_dates#index'
      end

      post 'authenticate', to: 'authentication#create'
    end
  end 
end
