Rails.application.routes.draw do
  resources :answers
  resources :question_inputs
  resources :questions
  resources :sharing_settings

  get 'question_input/edit'
  get 'question_input/new'
  get 'question_input/create'
  get 'home/index'

  get '/auth/:provider/callback' => 'sessions#create'
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/sharing' => 'sharing#index'

  root 'home#index'
end
