Rails.application.routes.draw do
  resources :accounts
  resources :users
	root 'static#index'
end