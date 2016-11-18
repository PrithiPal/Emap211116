Rails.application.routes.draw do
  devise_for :supervisors
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :guards
  resources :widgets
  resources :guards
  resources :supervisors


  root 'welcome#index'

  # Example of regular route:

end
