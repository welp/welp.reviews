Rails.application.routes.draw do
  resources :restaurants, path: '/api/v1/restaurants' do
    resources :reviews
    resources :tips
  end

  resources :categories,  path: '/api/v1/categories', only: [:index, :show]
  resources :users,       path: '/api/v1/users', only: [:show, :create]

  get    '/api/v1/user' => 'users#user'
  put    '/api/v1/user' => 'users#update'
  patch  '/api/v1/user' => 'users#update'
  delete '/api/v1/user' => 'users#destroy'

  # Catch-all 404
  match '*path' => 'application#not_found', via: :all
end
