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

  def edited_by(canvas)
    #
    id = canvas.originator.to_i

    u = User.find_by_id(id)
    if u 
      return u.email
    else
      return canvas.originator
    end
  end
end
