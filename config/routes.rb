Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :create, :update, :destroy]
  resources :outfits, only: [:index, :show, :create, :destroy]
  resources :comments, only: [:index, :show, :create, :destroy]
  resources :like, only: [:create, :destroy]
  resources :rating, only: [:show, :update]
  resources :link, only: [:show, :create, :update, :destroy]
end
