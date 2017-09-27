class ImageSerializer < ActiveModel::Serializer
  attributes :id, :url, :name, :likes
  has_many :comments

  def likes
    object.likes.count
  end

end
