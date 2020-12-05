Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'

  get '/music', to: 'music#index'

  get '/radio', to: 'radio#index'

  get '/registration', to: 'users#new', as: :registration

  get '/login', to: 'sessions#new'
end
