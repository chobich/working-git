Rails.application.routes.draw do
  root 'menber#index'
  resources :menber
end
