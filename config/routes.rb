Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  post "/login", to: "users#login"
  resources :playlists
  delete '/delete', to: "playlists#destroy"
  delete '/playlistdelete/:id', to: "playlists#playlistDelete"
  resources :songs


  # resources :playlists
  # resources :songs
end
