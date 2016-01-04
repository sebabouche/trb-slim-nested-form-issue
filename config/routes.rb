Rails.application.routes.draw do

  root 'things#new'

  resources :things

end
