class RemoveUuidFromImages < ActiveRecord::Migration[5.1]
  def change
    remove_column :images, :uuid, :uuid
  end
end
