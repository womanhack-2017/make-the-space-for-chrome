Rails.application.routes.draw do
  resources :tweets, only: [:index, :show]
  resources :donates, only: [:index, :show]
  resources :evolves, only: [:index, :show]
  resources :thinks, only: [:index, :show]
  resources :applies, only: [:index, :show]
  resources :develops, only: [:index, :show]
  resources :connects, only: [:index, :show]
end
