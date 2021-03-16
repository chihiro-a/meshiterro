Rails.application.routes.draw do
  root 'post_images#index'
  # root to: 'homes#top'から変わってる…
  devise_for :users
  resources :post_images, only: [:new, :create, :index, :show, :destroy]

end
