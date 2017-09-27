Rails.application.routes.draw do

  resources :image_likes
  resources :likes
  resources :comments, only: [:create, :destroy]
  resources :images, only: [:index, :show, :update]

  post '/likes/:id', to: 'likes#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
