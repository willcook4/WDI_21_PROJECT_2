Rails.application.routes.draw do
  root "statics#index"
  devise_for :users
  get 'aught', to: "aught#index"
  get 'statics', to: "statics#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
