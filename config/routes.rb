Chessie::Application.routes.draw do
  resources :moves

  resources :exercises

  root :to => 'exercises#index'
  
end
