module CanvasesHelper
  def new_canvas_params
    if params[:filter] == 'private'
      return {:canvas => {:public=>false}}
    elsif params[:filter] == 'public'
      return {:canvas => {:public=>true}}
    else
      return nil
    end
  end
end
