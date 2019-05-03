# Rails.application.routes.draw do
#   devise_for :members, :controllers => {
#     :registrations => 'members/registrations'
#   }
#   root 'members#index'
#   resources :members do
#     resources :group
#     resources :tasks
#     resources :projects
#     end
#   end
Rails.application.routes.draw do
  devise_for :members, :controllers => {
    :registrations => 'members/registrations'
  }
  root 'members#index'
  resources :members do
    resources :projects
    resources :tasks
end
end
