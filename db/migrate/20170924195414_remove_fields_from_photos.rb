class RemoveFieldsFromPhotos < ActiveRecord::Migration[5.1]
  def change
    remove_column :photos, :rating, :float
    remove_column :photos, :status, :integer
  end
end
