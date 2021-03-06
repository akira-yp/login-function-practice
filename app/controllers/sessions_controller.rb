class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to blogs_path,notice:"ログインしました"
    else
      flash.now[:danger] = "ログインに失敗しました"
      render :new
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to new_session_path, notice:"ログアウトしました"
  end
end
