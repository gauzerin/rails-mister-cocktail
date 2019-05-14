Rails.application.routes.draw do
  # root to: 'cocktails#index'
  # get '/cocktails', to: 'cocktails#index'
  # get '/cocktails/new', to: 'cocktails#new'
  # get '/cocktails/:id', to: 'cocktails#show', as: 'cocktail_show'
  # post '/cocktails', to: 'cocktails#create'
  resources :cocktails, only: [:index, :new, :create, :show] do
    resources :doses, only: [:new, :create, :delete]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
