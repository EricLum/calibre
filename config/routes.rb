Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
    resources :users, :media, :playlists, :comments
    post 'users/login', to: 'users#find_or_create'
    post 'playlists/user/:id', to: 'playlists#return_playlist'
    delete 'playlists/:user_id/:medium_id', to: 'playlists#destroy'
    end
  end
end
