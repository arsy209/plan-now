class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @comment = current_user.comments.build(comment_params)
    if @comment.save
      respond_to do |format|
        format.js
        format.html
      end
    else
      redirect_to events_path
    end
  end

  # def update
  #   @comment = Comment.find_by(id: params[:id])
  #   @comment.update_attributes(comment_params)
  #   redirect_to events_path
  # end
  #
  def destroy
  @comment = Comment.find_by(id: params[:id])
    if @comment.destroy
    respond_to do |format|
      format.html { redirect_to events_path, notice: 'Comment was successfully deleted.' }
      format.json { head :no_content }
     end
   end
  end

  private

  def comment_params
    params.require(:comment).permit(:event_id, :content)
  end
end
