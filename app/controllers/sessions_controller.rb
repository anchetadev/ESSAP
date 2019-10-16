class SessionsController < ApplicationController

  def new
    # login page
  end

  def create
    # log user in 
    @user = User.find_by_email(params[:l_email])
    if @user && @user.authenticate(params[:l_password])
      session[:user_id] = @user.id   
      flash[:notice] = ["Welcome #{@user.name}"]   
      return redirect_to "/"
    else
      flash[:errors] = ["Invalid Combination"]
      return redirect_to '/session/users/login'
    end
    # if authentication is true 
      #  save user id to session
      # redirect to users login
    # if authentication is false
      # add error msg -> flash[:errors] = ["invalid"]
    # redirect to login page
  end

  def destroy
    User.find(session[:user_id])
    session[:user_id] = nil
    redirect_to '/'
  end
end
