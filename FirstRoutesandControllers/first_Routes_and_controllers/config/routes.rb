Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htm

  resources :users, only: [:index, :create, :destroy, :show, :update ] do
     resources :artworks, only: [:index]
  end
#   # config/routes.rb
#     NewspapersApp::Application.routes.draw do
#     resources :magazines do
#   # provides a route to get all the articles for a given magazine.

#     resources :articles, only: :index
#   end


  resources :artwork_shares, only: [:create, :destroy]

  resources :artworks, except: [:new, :edit]
  
end
