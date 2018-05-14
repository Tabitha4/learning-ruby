Rails.application.routes.draw do

  devise_for :users

  resources :users
  resources :products
  resources :orders, only: [:index, :show, :create, :destroy]

  resources :products, only: [:show] do
    resources :comments, only: [:create, :edit, :update, :destroy]
  end

  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/index'
  get 'simple_pages/landing_page'

  post 'simple_pages/thank_you'

  root 'simple_pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
