Chessie::Application.routes.draw do
  resources :exercises

  root :to => 'exercises#index'
  
end
