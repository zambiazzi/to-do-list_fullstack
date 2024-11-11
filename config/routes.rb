Rails.application.routes.draw do
  root 'home#index'

  resources :tasks, only: %i[ index new create edit update destroy]
end

#index new create show edit update destroy

