module ApplicationHelper
  def show_header?
    if params[:controller] == "welcome" and params[:action] == "index"
      return false
    elsif params[:controller] == "canvases" and params[:action] == "show"
      return false
    else
      return true
    end
  end
end
