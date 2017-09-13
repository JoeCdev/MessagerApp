Rails.application.routes.draw do
  get 'coversations/index'

  devise_for :users

  resources :conversations, only: [:index, :show, :destroy]

  root "coversations#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
