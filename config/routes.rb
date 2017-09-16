Rails.application.routes.draw do
  get 'welcome/index', to: 'welcome#index'
  get '/', to: 'welcome#index'
  get '/dziennik', to: 'welcome#index'
  resources:"entries"
end
