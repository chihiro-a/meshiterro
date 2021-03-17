Rails.application.routes.draw do
  # 消すget 'users/show'
  root 'post_images#index'
  # root to: 'homes#top'から変わってる…
  devise_for :users
  resources :post_images, only: [:new, :create, :index, :show, :destroy]do
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]

end
