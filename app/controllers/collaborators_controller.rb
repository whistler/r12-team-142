class CollaboratorsController < ApplicationController
  def create
    @collaborator = Collaborator.new(params[:collaborator])

    respond_to do |format|
      if @collaborator.save
        format.html { redirect_to @collaborator.canvas, notice: 'Email was successfully created.' }
      else
        format.html { render action: "settings", controller: "canvas", canvas_id: @collaborator.canvas_id }
      end
    end
  end

  # DELETE /canvases/1
  # DELETE /canvases/1.json
  def destroy
    @collaborator = Collaborator.find(params[:id])
    @collaborator.destroy

    respond_to do |format|
      format.html { redirect_to canvases_url }
      format.json { head :no_content }
    end
  end
end
