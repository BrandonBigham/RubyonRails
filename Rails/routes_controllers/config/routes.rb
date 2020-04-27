Rails.application.routes.draw do
  root 'displays#index'
  get 'hello' => 'display#hello'
  get 'say/hello(/:name)' => 'display#say'
  get 'times' => 'display#times'
  get 'times/restart' => 'display#restart'
end
