class ApplicationController < ActionController::Base
  protect_from_forgery
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
  
  # defines the user for papertrail
  def user_for_paper_trail
    user_signed_in? ? current_user : 'Anonymous'
  end
  
end
