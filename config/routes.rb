CourseProject::Application.routes.draw do
  root to: "posts#index"
  resources :posts, only: [:show]
end
