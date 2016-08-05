Rails.application.routes.draw do

  root "statics#index"
  devise_for :users
  get 'aught', to: "aught#index"
  get 'statics', to: "statics#index"
  # get 'user/show', to: 'user#show'
  get 'user:id/', to: 'user#show', as: "user"
  get 'user/index', to: 'user#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
