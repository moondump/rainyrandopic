class LikesController < ApplicationController

  def create
    @image = Image.find(params[:image_id])
    @like = Like.create
    @image_like = ImageLike.create(image: @image, like: @like)
    render json: @like
  end

end
