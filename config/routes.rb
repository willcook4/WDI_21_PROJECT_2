Rails.application.routes.draw do

  resources :things do 
    resources :images, :only => [:create, :destroy]
  end
  root "statics#index"
  devise_for :users
  get 'aught', to: "aught#index"
  get 'statics', to: "statics#index"
  # get 'user/show', to: 'user#show'
  get 'user:id/', to: 'user#show', as: "user"
  get 'user/index', to: 'user#index'

  get 'tag/index', to: 'tag#index'
  get 'tag/tag:id', to: 'tag#show', as: "tag"
end
