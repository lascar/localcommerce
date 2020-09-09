Rails.application.routes.draw do
  root to: 'welcome#welcome'
  devise_for :users
  resources :products, except: :destroy
  delete :products, to: 'products#destroy', as: :delete_product
end
