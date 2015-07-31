Rails.application.routes.draw do
  get 'question_input/edit'
  get 'question_input/new'
  get 'question_input/create'
  get 'home/index'

  resources :questions
  resources :answers
  resources :question_inputs

  get "/auth/:provider/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout

  root 'home#index'
end
