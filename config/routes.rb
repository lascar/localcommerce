Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'welcome#welcome'
  devise_for :users
  resources :products, only: [:index, :show]
  delete :products, to: 'products#destroy', as: :delete_product
end
