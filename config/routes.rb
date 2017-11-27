Rails.application.routes.draw do
  get 'products/new'

  get 'products/show'

  get 'products/index'

  root 'products#index'

  get 'static_pages/home'

  
  get  '/contact', to: 'static_pages#contact'
  get  '/about', to: 'static_pages#about'

  resources :products

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
