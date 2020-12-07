Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'

  get '/music', to: 'music#index'

  get '/radio', to: 'radio#index'

  get '/dnd', to: 'dnd#index'

  get '/registration', to: 'users#new', as: :registration
  resources :users, only: [:create, :update]
  get '/profile', to: 'users#show'
  get '/profile/edit', to: 'users#edit'
  get '/profile/edit_password', to: 'users#edit_password'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#login'
  get '/logout', to: 'sessions#logout'

  namespace :api do
    namespace :v1 do
      get '/backgrounds', to: 'image#show'
    end
  end
end
