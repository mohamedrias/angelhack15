Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get '/locations'=>"home#locations"
end
