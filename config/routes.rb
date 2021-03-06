Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  #resources :articles, only: [:show, :index, :new, :create, :edit, :update, :destroy]
  resources :articles
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  #post 'users', to: 'users#create'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'     # Cannot use resources for this route as it does not involve database
  delete 'logout', to: 'sessions#destroy'
  resources :categories, except: [:destroy]
end
