Rails.application.routes.draw do
  resources :referenzs
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
