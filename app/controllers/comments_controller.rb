class CommentsController < ApplicationController

  def create
    @image = Image.find(params[:image_id])
    @comment = Comment.create(content: params[:comment])
    ImageComment.create(image: @image, comment: @comment)
    @comments = @image.comments
    render json: @comments
  end

  def destroy
    @comment = Comment.find(params[:id])
    @image = @comment.image
    ImageComment.find_by(comment_id: params[:id]).destroy
    @comment.destroy
    @comments = @image.comments
    render json: @comments
  end
end
