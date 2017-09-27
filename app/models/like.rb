class Like < ApplicationRecord
  has_one :image_like
  has_one :image, through: :image_like


  def self.count(image)
    self.all.select {|like| like.image == image}.count
  end

end
