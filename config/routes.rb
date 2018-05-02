Rails.application.routes.draw do

  devise_for :users
  root to: 'portfolios#show'

  resources :portfolios, only: [:create, :show] do
  	resources :shares, only: [:new, :create, :show, :delete]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
