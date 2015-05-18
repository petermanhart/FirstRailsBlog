Rails.application.routes.draw do
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  devise_for :users
  resources :posts
  root "posts#index"

  get '/about', to: 'pages#about'


end
