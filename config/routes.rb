Rails.application.routes.draw do
  resources :supportmatrices
  resources :monitoringzusks
  #get 'monitoringzusks/new/:komponente_id/:server_id', to 'monitoringzusks#new'
  get 'monitoringzusks/new/k/:komponente_id', to: 'monitoringzusks#new'
  get 'monitoringzusks/new/s/:server_id', to: 'monitoringzusks#new'
  get 'supportmatrices/new/:applikation_id', to: 'supportmatrices#new'
  get 'supportmatrices/new/:applikation_id/:was', to: 'supportmatrices#new'
  get 'supportmatrices/edit/:id/edit/:was', to: 'supportmatrices#edit'
  resources :monitorings
  resources :referenzs
  get 'referenzs/new/:applikation_id', to: 'referenzs#new'
  resources :komponentes
  get 'start/index', to: 'start#index'
  get 'start/index/:id', to: 'start#index'
  get 'start/index/:id/:applikation_id', to: 'start#index'
  resources :applikations
  resources :fachgruppes
  resources :dienstleisters
  resources :servers
  resources :betriebssystems
  resources :betriebssystemtyps
  resources :kundes

  root to:'start#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
