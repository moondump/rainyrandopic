class LikesController < ApplicationController

  def create
    @image = Image.find(params[:image_id])
    @image_like = ImageLike.create(image: @image, like: Like.create)
    render json: @image
  end

end
