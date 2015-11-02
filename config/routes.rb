Rails.application.routes.draw do
  devise_for :users
 
  root 'perks#index'
  get 'perks/:id' => 'perks#details'
  get 'favorite/:id' => 'favorites#create'
  get 'favorite' => 'favorites#show', as: :favorite
  delete 'unfavorite/:id' => 'favorites#unfavorite', as: :unfavorite
end
