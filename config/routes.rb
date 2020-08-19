Rails.application.routes.draw do
  resources :restaurants, except: [:delete, :edit] do
    resources :reviews, only: [:new, :create]
  end
end
