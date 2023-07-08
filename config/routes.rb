Rails.application.routes.draw do
  devise_for :users, controllers: {
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    sessions: 'users/sessions',
  }

  root 'tweets#index'
  resources :profiles, only: %i[show]
  resources :tweets, only: %i[index show new create]
end
