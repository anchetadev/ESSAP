class SessionsController < ApplicationController

  def new
    # login page
  end

  def create
    # log user in 
    @user = User.find_by_email(params[:l_Email])
    if @user && @user.authenticate(params[:l_Password])
      session[:user_id] = @user.id   
      flash[:notice] = ["Welcome #{@user.name}"]   
      return redirect_to "/"
    else
      flash[:errors] = ["Invalid Combination"]
      return redirect_to '/session/login'
    # if authentication is true 
      #  save user id to session
      # redirect to users login
    # if authentication is false
      # add error msg -> flash[:errors] = ["invalid"]
    # redirect to login page
  end

  def destroy
  end
end
