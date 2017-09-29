class CommentsController < ApplicationController

  def create
    @image = Image.find(params[:image_id])
    # change parameter from `comment` to `content` in student readme
    @comment = Comment.create(content: params[:content], image: @image)

    # change response in student readme
    render json: @comment
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    # change response in student readme
    render json: {message: 'Comment Successfully Destroyed'}
  end


end
