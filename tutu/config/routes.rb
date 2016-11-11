Rails.application.routes.draw do
  devise_for :users
  
  resources :tickets

  namespace :admin do
  resources :trains do 
    resources :wagons, shallow: true
  end
  resources :railway_stations do 
    patch :update_position, on: :member
    patch :update_time_arrival, on: :member
    patch :update_time_departure, on: :member
  end
  resources :routes
  resource :search, only: [:new, :show, :edit] do
    post :search_train, on: :member
  end
  resources :tickets
  end

  get 'welcome/index'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
