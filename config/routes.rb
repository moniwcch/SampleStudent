Rails.application.routes.draw do
resources :students
root 'pages#home'
get 'about',to: 'pages#about'
end
