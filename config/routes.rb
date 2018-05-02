Rails.application.routes.draw do

  devise_for :users
  root to: 'portfolios#show'

  resources :portfolios do
  	resources :shares
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
