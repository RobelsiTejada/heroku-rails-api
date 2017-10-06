# frozen_string_literal: true

Rails.application.routes.draw do
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepassword'
  resources :users, only: [:index, :show, :create, :destroy, :update]
  get '/players' => 'players#show'
  post '/players' => 'players#create'
  delete '/players/:id' => 'players#destroy'
  patch '/players/:id' => 'players#update'
  get '/rosters' => 'rosters#show'
  post '/rosters' => 'rosters#create'
  delete '/rosters/:id' => 'rosters#destroy'
  patch '/rosters/:id' => 'rosters#update'
  get '/games' => 'games#show'
  post '/games' => 'games#create'
  delete '/games/:id' => 'games#destroy'
  patch '/games/:id' => 'games#update'
  get '/leagues' => 'leagues#show'
  post '/leagues' => 'leagues#create'
  delete '/leagues/:id' => 'leagues#destroy'
  patch '/leagues/:id' => 'leagues#update'
  get 'auth/:provider/callback', to: 'sessions#custom'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  devise_scope :user do
    get 'sign_in', to: 'devise/sessions#new', as: :new_user_session
    get 'sign_out', to: 'devise/sessions#destroy', as: :destroy_user_session
  end
end
