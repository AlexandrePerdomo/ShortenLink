# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'links#index'
  resources :links, only: %i[create destroy]
  get '/tracks', to: 'links#tracks'
  get '/:id', to: 'links#show', as: :link_show
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
