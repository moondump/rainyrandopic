class Like < ApplicationRecord
  belongs_to :image
  validates :image_id, numericality: { only_integer: true }
end
