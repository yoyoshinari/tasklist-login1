Rails.application.routes.draw do
  # root to は一番上に持ってきたほうが見やすい
  root to: 'toppages#index'

  resources :users, only: [:index, :show, :new, :create]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :tasks, only: [:index, :show, :new, :create]
  
  get 'signup', to: 'users#new'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
