Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/login', to: 'sessions#login'
  get '/success', to: 'sessions#success'
  # post '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/github/callback', to: 'sessions#create'

end
