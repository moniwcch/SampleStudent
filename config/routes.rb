Rails.application.routes.draw do
  resources :users
resources :students
root 'pages#home'
get 'about',to: 'pages#about'
end
