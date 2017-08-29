# frozen_string_literal: true

Rails.application.routes.draw do
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  post '/leagues' => 'leagues#create'
  get '/leagues' => 'users#leagues'
  post '/games' => 'games#create'
  get '/games' => 'users#games'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show, :create, :destroy, :update]
end
