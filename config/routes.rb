Rails.application.routes.draw do
  resources :restaurants, path: '/api/v1/restaurants'
end
