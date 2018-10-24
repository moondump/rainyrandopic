class Comment < ApplicationRecord
  default_scope {order(:id)}
  belongs_to :image
  validates :image_id, numericality: { only_integer: true }
  validates :content, presence: true
end
