class ImageSerializer < ActiveModel::Serializer
  attributes :id, :url, :name, :like_count, :comments

  def like_count
    object.likes.count
  end

  def comments
    object.comments
  end

end
