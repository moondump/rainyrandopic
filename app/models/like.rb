class Like < ApplicationRecord
  has_one :image_like
  has_one :image, through: :image_like


  def like_count
    self.class.all.select {|like| like.image = self.image}.count
  end

end
