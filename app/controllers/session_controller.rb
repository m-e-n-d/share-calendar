class SessionController < ApplicationController
  def new
  end

  def create
  end

  def destroy
  end
end

private
  def login_params
    params.require(:login_params).permit(:user_name, :password)
  end