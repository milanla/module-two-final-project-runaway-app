class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :logged_in?
  before_action :session_user_reset

  def session_user_reset
    if User.all.count == 0
      session.delete(:user_id)
    end
  end

  def index
    # byebug
    if @user
      @user = User.find(session[:user_id])
      log_in(session[:user_id])
      @destination_sample = Destination.all.sample
    end
  end


  private

  def log_in(user)
    session[:user_id] = user.id
  end

  def log_out
    session.destroy(:user_id)
  end

  def logged_in?
    !!session[:user_id]
  end

  def require_user
    if !logged_in?
      flash[:danger] = "You must be logged in to perform that action"
      redirect_to root_path
    end
  end

end
