Chessie::Application.routes.draw do
  resources :lessons

  resources :moves

  resources :exercises

  root :to => 'exercises#index'
  
end
