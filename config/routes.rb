Rails.application.routes.draw do
  get 'start/index', to: 'start#index'
  resources :applikations
  resources :fachgruppes
  resources :dienstleisters
  resources :servers
  resources :betriebssystems
  resources :betriebssystemtyps
  resources :kundes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
