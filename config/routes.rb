Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }

  root to: 'home#index'


  match 'user_root' => 'users#show', :via => [:get]
  resources :dishes

  resources :events #, only: %i[index new show create edit update]
end
