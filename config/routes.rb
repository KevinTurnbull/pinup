Rails.application.routes.draw do
  root to: 'root#home'

  resources :csv_calendars

  devise_for :users, controllers: { registrations: 'users/registrations',
                                    sessions: 'users/sessions',
                                    omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :artists
  resources :venues
  resources :events, except: [ :edit, :destroy ]

  scope '/admin' do
    get 'dashboard', to: 'dashboard#home'
    get 'load_google_calendars', to: 'dashboard#load_google_calendars'

    resources :users
    resources :ads, module: :admin
    resources :events
  end
end