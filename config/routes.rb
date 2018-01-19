Rails.application.routes.draw do
  resources :products
  resources :orders, only: [:index, :show, :create, :destroy]

  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/index'
  # get 'simple_pages/products'

  root 'simple_pages#index' # set the index page / root url
  root 'simple_pages#home'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
