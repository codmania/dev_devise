Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users

  resources :timelines do
    resources :events
  end

  resources :timelines do
    resources :shared_timelines
  end

  get 'send_reminder', to: 'events#send_reminder'
  post 'send_reminder', to: 'events#send_reminder'

end
