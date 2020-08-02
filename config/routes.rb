Rails.application.routes.draw do
  devise_for :users
  root 'post_images#index'
  resources :users, only: [:show, :edit, :update]
  resources :post_images, only:[:new, :create, :index, :show, :destroy] do
    resource :post_comments, only:[:create, :destroy]
    resource :favorites, only:[:create, :destroy]
  end
end
