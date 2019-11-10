class MentorsController < ApplicationController
  def login
  end

  def create
    # renders create page
  end

  def new
    @mentor = Mentor.create(name: params[:name], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation], admin: params[:admin])
    if @mentor && @mentor.password == @mentor.password_confirmation
    end
    puts "created new mentor"
    # session[:mentor_id] = @mentor.id
    return redirect_to "/"
    flash[:errors] = ["Something went wrong"]
    return redirect_to "/students/create"
  end

  def edit
    @mentor = current_mentor
  end

  def update_password
    def update_password
      @mentor = Mentor.find(params[:id])
      if params[:password] == params[:password_confirmation]
        @mentor.update(password: params[:password])
      else
        flash["passwords must match"]
        return redirect_to "/users/edit/#{params[:id]}"
      end
      return redirect_to "/"
    end
  end

  def index
    @mentor = Mentor.all
  end
end
