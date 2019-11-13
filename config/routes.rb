Rails.application.routes.draw do
  get 'feedbacks/create'

  get 'feedbacks/index'

  get "/" => "mentors#index"
  get "mentors/login"

  get "mentors/create"

  get "mentors/edit"
  post "mentors/new" => "mentors#new"
  get "mentors" => "mentors#index"
  get "mentors/edit/:id" => "mentors#edit"
  patch "mentors/edit/:id" => "mentors#update_password"
  # login for students/mentors
  delete "sessions/users/:id" => "sessions#destroy"
  delete "sessions/mentors/:id" => "sessions#destroyMentor"
  get "sessions/users" => "sessions#new"
  post "sessions/users/new" => "sessions#create"
  post "mentors/sessions" => "sessions#createMentor"
  # register new students
  get "users/create"
  post "users/create" => "users#new"
  get "users" => "users#index"
  get "users/:id" => "users#show"
  get "users/show"
  get "users/edit/:id" => "users#edit"
  patch "users/edit/:id" => "users#update_password"

  get 'feedback' => "feedback#create"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
