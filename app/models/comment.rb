class Comment < ApplicationRecord
  has_one :image_comment
  has_one :image, through: :image_comment

  def comments
    self.image.comments
  end
  
end
