Rails.application.routes.draw do
  resources :restaurants, path: '/api/v1/restaurants'
  resources :categories,  path: '/api/v1/categories', only: [:index, :show]
end
