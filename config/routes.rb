Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'
  resources :products, only: [] do
    member do
      post :upvote
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
