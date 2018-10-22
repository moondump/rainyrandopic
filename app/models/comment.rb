class Comment < ApplicationRecord
  default_scope {order(:id)}
  belongs_to :image
end
