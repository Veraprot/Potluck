Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }

  root to: 'home#index'


  match 'user_root' => 'users#show', :via => [:get]
  resources :dishes

  resources :events #, only: %i[index new show create edit update]

  get '/dishes/new/event/:id', to: "dishes#new", as: 'new_dish_event'

  post '/dishes', to: "dishes#create"

end
