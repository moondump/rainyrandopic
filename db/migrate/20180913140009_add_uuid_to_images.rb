class AddUuidToImages < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :uuid, :uuid
  end
end
