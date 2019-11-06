class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # for students
  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end

  # for mentors
  def current_mentor
    Mentor.find(session[:mentor_id]) if session[:mentor_id]
  end

  helper_method :current_user
  helper_method :current_mentor
end
