CourseProject::Application.routes.draw do
  root to: "posts#index"
  resources :posts, only: [:show, :new, :create] do
  	resources :comments, only: [:create]
  	resources :votes, only: [:create]
   end
  resources :users

  get '/my_form', to: 'forms#new'
  post '/my_form', to: 'forms#create'
end
