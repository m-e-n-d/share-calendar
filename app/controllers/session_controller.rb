class SessionController < ApplicationController
  before_action :set_user, only: [:create]

  def create

  end
end

private

  def set_user
    @user = User.find_by(user_name: login_params[:user_name], password: login_params[:password])
  end

  def login_params
    params.require(:login_params).permit(:user_name, :password)
  end