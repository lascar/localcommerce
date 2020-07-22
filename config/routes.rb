Rails.application.routes.draw do
  authenticated :user do
    namespace :gestor do
      resources :users

      root to: "users#index"
    end
  end
  devise_for :users
  root to: 'welcome#welcome'
end
