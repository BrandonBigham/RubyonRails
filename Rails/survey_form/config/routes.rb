Rails.application.routes.draw do
  get '' => 'users#index'
  get 'result' => 'users#result'
  post 'create' => 'users#create'
end
