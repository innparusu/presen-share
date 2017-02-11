Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :slides, only: [:new, :create, :show]
  resources :pages, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
