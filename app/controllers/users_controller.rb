class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user ||= User.create

    unless @user = User.find_by(email: user_params['email'])
      @user = User.new(user_params)
      @user.user_id = user.id
    end

    if @user.save
      session[:user_id] = @user.id
      redirect_to home_path, {notice: 'You have been successfully signed up and logged in to BrewDo, ' + @user.username}
    else
      redirect_to brewmaster_new_path, notice: 'Something went wrong during sign up'
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
