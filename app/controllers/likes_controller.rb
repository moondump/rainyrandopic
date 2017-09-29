class LikesController < ApplicationController

  def create
    @like = Like.create(image_id: params[:image_id])

    # removed like serializer, change response in student readme
    render json: @like
  end

end
