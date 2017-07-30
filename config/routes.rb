Rails.application.routes.draw do
  get 'guess_by_appearance/retry', to: 'guess_by_appearance#retry'
  resources :guess_by_appearance

  root 'guess_by_appearance#new'
end
