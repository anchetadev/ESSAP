Rails.application.routes.draw do
  get '/' => 'mentors#index'
  get 'mentors/login'

  get 'mentors/create'

  get 'mentors/edit'

  post 'mentors/new' => 'mentors#new'
  get 'mentors' => 'mentors#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
