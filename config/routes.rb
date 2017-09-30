Rails.application.routes.draw do
  get 'connect/index'

  get 'connect/show'

  get 'develop/index'

  get 'develop/show'

  get 'apply/index'

  get 'apply/show'

  get 'think/index'

  get 'think/show'

  get 'evolve/index'

  get 'evolve/show'

  get 'donate/index'

  get 'donate/show'

  resources :tweets, only: [:index, :show]
  resources :donates, only: [:index, :show]
  resources :evolves, only: [:index, :show]
  resources :thinks, only: [:index, :show]
  resources :applies, only: [:index, :show]
  resources :develops, only: [:index, :show]
  resources :connects, only: [:index, :show]
end
