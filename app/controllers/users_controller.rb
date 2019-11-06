class UsersController < ApplicationController
  def index
    @user = User.all
  end
  def create
    # if mentor is logged in and is an admin they can create new students
    if !current_mentor || current_mentor.admin != true
      return redirect_to "/mentors/login"
    else
      @mentor = Mentor.all
      return render "create"
    end
  end

  def new
    # process the post request
    @user = User.create(name: params[:name], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation], stage: params[:stage], degree: params[:degree], major: params[:major], mentor_id: params[:assignedMentor])
    return redirect_to "/users"
  end

  def edit
    # if mentor is logged in and is an admin they can create new students
    @current = Mentor.find(session[:mentor_id])
    if @current.admin == false || nil
      return redirect_to "/mentors/login"
    else
      return render "edit"
    end
  end

  def show
  end
end
