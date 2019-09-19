Rails.application.routes.draw do
  resources :tickets
  resources :civilians
  resources :officers

    post '/login', to: 'auth#login'
    get '/profile/', to: 'officers#profile'

end
