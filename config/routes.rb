Chessie::Application.routes.draw do
  resources :lessons

  resources :moves

  resources :exercises do
	member do
    	get 'practice'
  	end
  end

  root :to => 'lessons#index'

  # match 'exercises/:id/practice' => 'exercises#practice'
  
end
