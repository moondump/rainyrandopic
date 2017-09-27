class CommentsController < ApplicationController

  def create
    @image = Image.find(params[:image_id])
    ImageComment.create(image: @image, comment: Comment.create(content: params[:comment]))
    render json: @image
  end

  def destroy
    @comment = Comment.find(params[:id])
    @image = @comment.image
    ImageComment.find_by(comment_id: params[:id]).destroy
    @comment.destroy
    render json: @image
  end
end
