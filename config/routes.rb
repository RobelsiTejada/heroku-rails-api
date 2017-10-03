# frozen_string_literal: true

Rails.application.routes.draw do
  get 'react_examples/component', to: 'react_examples#component', as: :component
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepassword'
  resources :users, only: [:index, :show, :create, :destroy, :update]
end
