Rails.application.routes.draw do
  root 'nightmares#index'
  resources :nightmares
end
