Rails.application.routes.draw do
  # resources :users, only: %i[ show ]
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to: 'home#index'
  resources :events, only: %i[index new show create edit update]
end
