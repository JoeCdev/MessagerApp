Rails.application.routes.draw do
  get 'messages/new'

  get 'coversations/index'

  devise_for :users

  resources :conversations, only: [:index, :show, :destroy] do
    member do
      post :reply
    end
  end

  resources :conversations, only: [:index, :show, :destroy] do
    member do
      post :restore
    end
  end

  resources :conversations, only: [:index, :show, :destroy] do
    collection do
      delete :empty_trash
    end
  end

  resources :conversations, only: [:index, :show, :destroy] do
    member do
      post :mark_as_read
    end
  end

  root "coversations#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
