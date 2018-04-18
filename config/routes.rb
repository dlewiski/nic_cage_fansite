Rails.application.routes.draw do
  root 'welcome#index'
  resources :movies
  resources :photos
  resources :news
end
