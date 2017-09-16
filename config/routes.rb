Rails.application.routes.draw do
  get '/', to: 'entries#index'
  get '/entries', to: 'entries#index'
  get '/entries/:id', to: 'entries#show', as:'entry'
end
