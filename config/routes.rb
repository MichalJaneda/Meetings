Rails.application.routes.draw do
  devise_for :users

  root to: 'index#index'

  resources :meeting, only: %i[index new create show]
end
