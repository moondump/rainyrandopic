class CreateImageLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :image_likes do |t|
      t.references :image, foreign_key: true
      t.references :like, foreign_key: true

      t.timestamps
    end
  end
end
