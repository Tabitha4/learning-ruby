Rails.application.routes.draw do



  resources :products
  resources :orders, only: [:index, :show, :create, :destroy]
  resources :users

  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/index'
  get 'simple_pages/landing_page'
  #get '/products', to: 'products#index'

  post 'simple_pages/thank_you'

  root 'simple_pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
