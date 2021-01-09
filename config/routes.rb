Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: "users/registrations"}

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'films#index'

  get 'home' => 'home#index'
  get 'home/about' => 'home#about'

  get 'netflix' => 'services#netflix'
  get 'amazonPrime' => 'services#amazonPrime'
  get 'other' => 'services#other'

  resources :films do
    resources :likes, only: [:create, :destroy]
    namespace :admin do
      resources :films
    end
  end

  resources :users do
    member do
     get :following, :followers
    end
  end

  get 'users/:id/list' => 'users#show_list'

  resources :relationships, only: [:create, :destroy]
end
