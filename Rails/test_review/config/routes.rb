Rails.application.routes.draw do
  
  root 'sessions#new'
  get 'sessions/new' => 'sessions#new'
  post 'sessions' => 'sessions#login'
  delete 'sessions' => 'sessions#logout'

  resources :users
  resources :events
  resources :joins
  resources :comments

  get "*path" => redirect("/")
end
