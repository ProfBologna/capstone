class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "Successfully logged in."  #check user variable
      redirect_to "/games"
    else
      flash[:warning] = "Invalid email or password."
      redirect_to "/login"
    end  
  end

  def destroy
    session[:user_id] = nil
    flash[:warning] = "You have successfully logged out."
    redirect_to "/"
  end
end
