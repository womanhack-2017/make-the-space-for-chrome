Rails.application.routes.draw do
  resources :tweet, only: [:index, :show]
  resources :donate, only: [:index, :show]
  resources :evolve, only: [:index, :show]
  resources :think, only: [:index, :show]
  resources :apply, only: [:index, :show]
  resources :develop, only: [:index, :show]
  resources :connect, only: [:index, :show]
end
