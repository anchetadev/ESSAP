class MentorsController < ApplicationController
  def login
  end

  def create
    # renders create page
  end
  def new
    @mentor = Mentor.create!(name:params[:name], email:params[:email], password:params[:password], password_confirmation:params[:password_confirmation], admin:params[:admin])
    if @mentor && @mentor.password == @mentor.password_confirmation
    end
      puts "created new mentor"
      # session[:mentor_id] = @mentor.id   
      return redirect_to '/'
    flash[:errors] = ["Something went wrong"]
    return redirect_to '/mentors/create'
  end

  def edit
  end
end
