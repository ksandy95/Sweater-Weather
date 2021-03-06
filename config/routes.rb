# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#show', as: :root

  namespace :api do
    namespace :v1 do
      get '/forecast', to: 'forecast#show'
      get '/backgrounds', to: 'background#show'
      get '/antipode', to: 'antipode#show'
      get '/gifs', to: 'giphy#show'
      post '/users', to: 'users#create'
      post '/sessions', to: 'sessions#create'
    end
  end
end
