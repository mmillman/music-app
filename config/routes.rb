Musicapp::Application.routes.draw do

  root to: 'bands#index'
  resources :artists
  resources :bands
  resources :albums
  resources :tracks
  resources :singles
end
