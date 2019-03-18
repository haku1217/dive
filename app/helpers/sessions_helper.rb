module SessionsHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    current_user.present?
  end

  #2019/03/17ログイン機能実装>アクション制限機能
  def require_sign_in!
    unless logged_in?
      flash.now[:attention] = ' ログインか新規登録してください'
      render 'sessions/new'
    end
  end
end
