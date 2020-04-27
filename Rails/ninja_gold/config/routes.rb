Rails.application.routes.draw do
  get '' => 'rpg#index'
  get '/farm' => 'rpg#farm'
  get '/cave' => 'rpg#cave'
  get '/house' => 'rpg#house'
  get '/casino' => 'rpg#casino'
  get '/reset' => 'rpg#reset'
end
