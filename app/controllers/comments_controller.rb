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

  def destroy
  @comment = Comment.find_by(id: params[:id])
    if @comment.destroy
      redirect_to events_path(@event), notice: 'Comment was successfully deleted.'
   end
  end

  private

  def comment_params
    params.require(:comment).permit(:event_id, :content)
  end
end
