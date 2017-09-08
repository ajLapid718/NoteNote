Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  resources :notes

  authenticated :user do
    root 'notes#index', as: "authenticated_root" # In Rails 5, the addition of the alias is unnecessary
  end

  root 'welcome#index'
end
