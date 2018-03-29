class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def require_user_logged_in
    unless user_signed_in?
      redirect_to articles_path
    end
  end
  
end
