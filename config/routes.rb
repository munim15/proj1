Rails.application.routes.draw do
  get 'pokemons/new'

  get 'pokemons/create'

  get 'pokemons/show'

  get 'pokemons/edit'

  get 'pokemons/update'

  get 'pokemons/destroy'

  root to: 'home#index'

  patch 'capture', to: 'pokemons#capture'

  patch 'damage', to: 'pokemons#damage'

  devise_for :trainers
  resources :trainers
end
