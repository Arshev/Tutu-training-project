Rails.application.routes.draw do
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
  resource :ticket do
    get :buy_tickets, on: :member
  end

  get 'welcome/index'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
