Chessie::Application.routes.draw do
  resources :plans

  resources :practices

  resources :lessons

  resources :moves

  resources :exercises

  root :to => 'lessons#index'
  
end
