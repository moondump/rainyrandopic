class ImagesController < ApplicationController

  def index
    @image = Image.find(1 + rand(200))
    render json: @image
  end

  def show
    @image = ImageCreator.new(uuid: params[:uuid]).find_or_create_image

    render json: @image
  end



end
