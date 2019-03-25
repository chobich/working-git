Rails.application.routes.draw do
  devise_for :members
  root 'members#index'
  resources :members
end
