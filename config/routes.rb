Rails.application.routes.draw do
  get '/home', :to => "home#index"
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :album_photos
  resources :albums
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "home#index"
  get '*path' => redirect("/")
end
