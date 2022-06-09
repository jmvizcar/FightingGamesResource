class RegistrationsController < ApplicationController
  # Instantiates a new user
  def new 
    @user = User.new
  end
  def create 
    @user = User.create!(user_params)
    if @user.save
      # Stores saved user id in a session
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Account successfully created."
    else
      render :new
    end
  end
  private
  def user_params 
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
