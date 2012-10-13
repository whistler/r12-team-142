class ApplicationController < ActionController::Base
  protect_from_forgery

  # defines the user for papertrail
  def user_for_paper_trail
    user_signed_in? ? current_user : 'Public user'
  end
  
end
