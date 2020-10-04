class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: login_params[:user_name])

    if user && user.authenticate(login_params[:password_digest])
      login user
      flash[:success] = 'ログインしました'
      redirect_to root_url # TODO: ログイン後のページができたらアクセスを飛ばす設定をする
    else
      flash.now[:danger] = 'ユーザー名 または パスワードが一致しません'
      render 'new'
    end

  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end

private
  def login_params
    params.require(:session).permit(:user_name, :password_digest)
  end