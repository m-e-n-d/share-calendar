Rails.application.routes.draw do
  resources :calendars
  root 'index#index'
  
  resources :users

  # session
  get 'login', to: 'session#new'
  post 'login', to: 'session#create'
  delete 'logout', to: 'session#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
