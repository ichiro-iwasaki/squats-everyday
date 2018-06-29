Rails.application.routes.draw do
  root "logs#index"
  get '/logs', to:'logs#new'
  post '/logs', to:'logs#create'
end
