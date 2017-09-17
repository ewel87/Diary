Rails.application.routes.draw do
  get '/', to: 'entries#index'
  get '/entries', to: 'entries#index'
  get '/entries/new', to: 'entries#new', as: 'new_entry'
  get '/entries/:id', to: 'entries#show', as:'entry'
  post '/entries', to: 'entries#create'
end
