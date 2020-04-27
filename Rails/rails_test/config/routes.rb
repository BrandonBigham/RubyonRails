Rails.application.routes.draw do
   root 'sessions#new'
   get 'sessions/new' => 'sessions#new'
   post 'sessions' => 'sessions#login'
   delete 'sessions' => 'sessions#logout'
 
   post 'users' => 'users#create'
   get 'users/:id' => 'users#show'
   patch 'users/:id' => 'users#update'
 
   get 'shoes' => 'shoes#index'
   post 'shoes' => 'shoes#create'
   delete 'shoes/:id' => 'shoes#destroy'

   post 'purchase/:id' => 'purchases#create'

   get "*path" => redirect("/")
 
end
