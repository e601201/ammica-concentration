Rails.application.routes.draw do
  resources :users do
    member do
      resource :avators, only: %i[destroy]
    end
  end
  root 'cards#index'
  resources :cards
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
