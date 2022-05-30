Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "lists#index"

  # get 'lists', to: 'lists#index'
  # get 'lists/new', to: 'lists#new'
  # get 'lists/:id', to: 'lists#show', as: :list
  # post 'lists', to: 'lists#create', as: :create do
  #   resources :bookmarks, only: [:create]
  # end

  resources :lists, only: [:new, :create, :show] do
      resources :bookmarks, only: [:new, :create]
    end
    resources :bookmarks, only: :destroy
  end
