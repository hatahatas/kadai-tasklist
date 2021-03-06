class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper

  private

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
  
  def counts(user)
    @count_tasks = user.tasks.count
  end 
  before_action :set_current_user

def set_current_user
  @current_user = User.find_by(id: session[:user_id])
end
end