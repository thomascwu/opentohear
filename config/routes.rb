Rails.application.routes.draw do

  mount Spree::Core::Engine, at: '/'

  namespace :spree do
    resources :works
  end

  namespace :spree do
    resources :tests
  end

  namespace :spree do
    resources :solutions
  end

  namespace :spree do
    resources :contacts
  end

  namespace :spree do
    resources :abouts
  end

  namespace :spree do
    resources :hears
  end

# root to: 'hears#index'
  # root to: 'hears#index'
  # root '/spree/hears#index'

  # Spree::Core::Engine.add_routes do
    # namespace :spree do
    #   resources :hears
    # end
    # resources :hears
  # end

  # namespace :spree do
  #   resources :hears
  # end
  # # This line mounts Solidus's routes at the root of your application.
  # # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # # If you would like to change where this engine is mounted, simply change the :at option to something different.
  # #
  # # We ask that you don't use the :as option here, as Solidus relies on it being the default of "spree"
  # mount Spree::Core::Engine, at: '/'

  # resources :homes
  # resources :abouts
  # resources :tests
  # resources :solutions
  # resources :works
  # resources :contacts

  # root 'page#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
