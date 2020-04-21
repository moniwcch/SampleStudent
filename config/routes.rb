Rails.application.routes.draw do
  resources :users
resources :students
root 'pages#home'
get 'about',to: 'pages#about'
get 'signup',to:"courses#new"
resources :courses,except: [:new]
get 'login',to:'sessions#new'
post 'login',to:'sessions#create'
delete 'logout',to:'sessions#destroy'
end
