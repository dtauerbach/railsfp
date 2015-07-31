class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :current_uuid

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def current_uuid
    if !current_user.nil?
      @uuid = current_user.uid
    elsif !session[:uuid].nil?
      @uuid = session[:uuid]
    else
      @uuid = generate_uuid
    end
    return @uuid
  end

  def generate_uuid
    session[:uuid] = SecureRandom.hex
  end
end
