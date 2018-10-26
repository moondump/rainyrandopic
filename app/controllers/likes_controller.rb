class LikesController < ApplicationController

  def create
    @like = Like.create(image_id: params[:image_id])
    if @like.persisted?
      render json: @like
    else
      render json: { message: "Like validation failed", errors: @like.errors }, status: :unprocessable_entity
    end
  end
end
