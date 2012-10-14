class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :_set_current_session
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
  
  # defines the user for papertrail
  def user_for_paper_trail
    user_signed_in? ? current_user : 'Anonymous'
  end

  protected
  def _set_current_session
    # Define an accessor. The session is always in the current controller
    # instance in @_request.session. So we need a way to access this in
    # our model
    accessor = instance_variable_get(:@_request)

    # This defines a method session in ActiveRecord::Base. If your model
    # inherits from another Base Class (when using MongoMapper or similar),
    # insert the class here.
    ActiveRecord::Base.send(:define_method, "session", proc {accessor.session})
  end
  
end
