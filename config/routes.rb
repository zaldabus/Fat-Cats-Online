CourseProject::Application.routes.draw do
  root to: "posts#index"

  resources :posts, only: [:show, :new, :create] do
  	resources :comments, only: [:create]
  	resources :votes, only: [:create]
   end

  resources :users, only: [:create, :show]
  get 'register', to: 'users#new', as: 'register'
  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  get '/my_form', to: 'forms#new'
  post '/my_form', to: 'forms#create'
end
