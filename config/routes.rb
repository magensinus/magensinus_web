# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "home#index"
  resources :home,        only: [:index],                       controller: :home
  resources :about,       only: [:index],                       controller: :about
  resources :quality,     only: [:index],                       controller: :quality
  resources :courses,     only: [:show],                        controller: :courses, path: :courses
  resources :categories,  only: [:index],                       controller: :categories, path: :courses
  resources :articles,    only: [:index, :show],                controller: :articles
  resources :contact,     only: [:index],                       controller: :contact
  resources :newsletter,  only: [:index, :show, :new, :create], controller: :newsletter

  # Style
  resource :style, only: [:show], controller: :style
end
