Rails.application.routes.draw do
  get '/pokeyo' => 'pokemons#starter_pokemon'
  get '/users/:id/start' => 'users#startgame'
  get '/users/:id/mudkip' => 'users#mudkip'
  get '/users/:id/treecko' => 'users#treecko'
  get '/users/:id/torchic' => 'users#torchic'
  get '/users/:id/secretbase' => 'users#secretbase'
  get '/users/:id/littleroot' => 'users#littleroot'
  get '/users/:id/r101' => 'users#r101'
  get '/users/:id/r101/capture' => 'users#r101_capture'
  get '/users/:id/r102' => 'users#r102'
  get '/users/:id/petalburg_city' => 'users#petalburg_city'
  get '/users/:id/r103' => 'users#r103'
  get '/users/:id/oldale_town' => 'users#oldale_town'
  get '/users/:id/pokecenter' => 'users#pokecenter'
  get '/users/:id/pokemart' => 'users#pokemart'
  get '/users/:id/pokelotto' => 'users#pokelotto'
  root 'users#index'
  resources :users do
    resources :pokemons
  end
  resources :pokemons
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
#       Prefix Verb   URI Pattern                  Controller#Action
#         root GET    /                            users#index
#        users GET    /users(.:format)             users#index
#              POST   /users(.:format)             users#create
#     new_user GET    /users/new(.:format)         users#new
#    edit_user GET    /users/:id/edit(.:format)    users#edit
#         user GET    /users/:id(.:format)         users#show
#              PATCH  /users/:id(.:format)         users#update
#              PUT    /users/:id(.:format)         users#update
#              DELETE /users/:id(.:format)         users#destroy
#     pokemons GET    /pokemons(.:format)          pokemons#index
#              POST   /pokemons(.:format)          pokemons#create
#  new_pokemon GET    /pokemons/new(.:format)      pokemons#new
# edit_pokemon GET    /pokemons/:id/edit(.:format) pokemons#edit
#      pokemon GET    /pokemons/:id(.:format)      pokemons#show
#              PATCH  /pokemons/:id(.:format)      pokemons#update
#              PUT    /pokemons/:id(.:format)      pokemons#update
#              DELETE /pokemons/:id(.:format)      pokemons#destroy
# Prefix Verb   URI Pattern                                 Controller#Action
#            pokeyo GET    /pokeyo(.:format)                           pokemons#starter_pokemon
#              root GET    /                                           users#index
#     user_pokemons GET    /users/:user_id/pokemons(.:format)          pokemons#index
#                   POST   /users/:user_id/pokemons(.:format)          pokemons#create
#  new_user_pokemon GET    /users/:user_id/pokemons/new(.:format)      pokemons#new
# edit_user_pokemon GET    /users/:user_id/pokemons/:id/edit(.:format) pokemons#edit
#      user_pokemon GET    /users/:user_id/pokemons/:id(.:format)      pokemons#show
#                   PATCH  /users/:user_id/pokemons/:id(.:format)      pokemons#update
#                   PUT    /users/:user_id/pokemons/:id(.:format)      pokemons#update
#                   DELETE /users/:user_id/pokemons/:id(.:format)      pokemons#destroy
#             users GET    /users(.:format)                            users#index
#                   POST   /users(.:format)                            users#create
#          new_user GET    /users/new(.:format)                        users#new
#         edit_user GET    /users/:id/edit(.:format)                   users#edit
#              user GET    /users/:id(.:format)                        users#show
#                   PATCH  /users/:id(.:format)                        users#update
#                   PUT    /users/:id(.:format)                        users#update
#                   DELETE /users/:id(.:format)                        users#destroy
#          pokemons GET    /pokemons(.:format)                         pokemons#index
#                   POST   /pokemons(.:format)                         pokemons#create
#       new_pokemon GET    /pokemons/new(.:format)                     pokemons#new
#      edit_pokemon GET    /pokemons/:id/edit(.:format)                pokemons#edit
#           pokemon GET    /pokemons/:id(.:format)                     pokemons#show
#                   PATCH  /pokemons/:id(.:format)                     pokemons#update
#                   PUT    /pokemons/:id(.:format)                     pokemons#update
#                   DELETE /pokemons/:id(.:format)                     pokemons#destroy