Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'artworks#home'
  resources :artworks
  get "home", to: "artworks#home"
  get "artworks", to: "artworks#index"
  get "biography", to: "artworks#biography"
  get "contact", to: "artworks#contact"

end
