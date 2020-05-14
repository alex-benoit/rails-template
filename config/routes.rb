# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      root 'pages#home'
    end
  end

  namespace :dashboard do
    root 'pages#home'
  end
end
