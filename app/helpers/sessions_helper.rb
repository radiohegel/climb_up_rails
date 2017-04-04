module SessionsHelper

  def login
    session[:user_id] = @user.id
  end

  def logout
    session[:user_id] = nil
    current_user = false
  end

  def logged_in?
    current_user ? true : false
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def owner?
    session[:user_id] == params[:id].to_i
  end

end
