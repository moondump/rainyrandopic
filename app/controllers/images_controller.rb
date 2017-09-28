class ImagesController < ApplicationController

  def index
    @images = Image.find(1 + rand(50))
    render json: @image
  end

  def show
    @image = Image.find(params[:id])
    render json: @image
  end



end
