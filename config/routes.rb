Rails.application.routes.draw do
  devise_for :guards
  resources :widgets


  root 'welcome#index'

  # Example of regular route:

end
