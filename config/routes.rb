Rails.application.routes.draw do
  resources :members #, only: [:index, :show]
  resources :guess_by_appearance

  root 'members#index'
end
