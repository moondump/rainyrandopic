class CommentsController < ApplicationController

  def create
    # change parameter from `comment` to `content` in student readme
    @comment = Comment.create(content: params[:content], image_id: params[:image_id])
    # change response in student readme
    if @comment.persisted?
      render json: @comment
    else
      render json: { message: "Comment validation failed", errors: @comment.errors }, status: :unprocessable_entity
    end
  end


  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    # change response in student readme
    render json: {message: 'Comment Successfully Destroyed'}
  end


end
