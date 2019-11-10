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
    @user = current_user
  end

  def update_password
    @user = User.find(params[:id])
    if params[:password] == params[:password_confirmation]
      @user.update(password: params[:password])
    else
      flash["passwords must match"]
      return redirect_to "/users/edit/#{params[:id]}"
    end
    return redirect_to "/"
  end

  def show
    @user = User.find(params[:id])
    @mentor = Mentor.find(@user.mentor_id)
  end
end
