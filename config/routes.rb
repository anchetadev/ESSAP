Rails.application.routes.draw do
  get '/' => 'mentors#index'
  get 'mentors/login'

  get 'mentors/create'

  get 'mentors/edit'
  post 'mentors/new' => 'mentors#new'
  get 'mentors' => 'mentors#index'
  # login for students/mentors
  delete 'sessions/users/:id' => 'sessions#destroy'
  delete 'sessions/mentors/:id' => 'sessions#destroyMentor'
  get  'sessions/users' => 'sessions#new'
  post 'sessions/users/new' => 'sessions#create'
  post 'mentors/sessions' => 'sessions#createMentor'
  # register new students
  get 'users/create'

  get 'users/edit'

  get 'users/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
