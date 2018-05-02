Rails.application.routes.draw do

  devise_for :users
  root to: 'portfolios#show'

  resources :portfolios, only: [:create, :show, :update] 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
