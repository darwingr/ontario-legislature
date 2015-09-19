Rails.application.routes.draw do
  resources :members #, only: [:index, :show]

  root 'members#index'
end
