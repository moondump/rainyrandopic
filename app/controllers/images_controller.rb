class ImagesController < ApplicationController

  def index
    @images = Image.find(1 + rand(5000))
    render json: @image, :include => :comments, :methods => :like_count
  end

  def show
    @image = Image.find(params[:id])
    render json: @image, :include => :comments, :methods => :like_count
  end



end
