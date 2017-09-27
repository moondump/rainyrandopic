class Image < ApplicationRecord
  has_many :image_comments
  has_many :comments, through: :image_comments
  has_many :image_likes
  has_many :likes, through: :image_likes

  def like_count
    self.likes.count
  end
end
