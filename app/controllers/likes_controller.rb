class LikesController < ApplicationController

  #Add in like model

  def create
    @image = Image.find(params[:id])
    @like = Like.create
    @image_like = ImageLike.create(image: @image, like: @like)
    render json: @image, :include => :comments, :methods => :like_count
  end

end
