class AddFieldsToPhotos < ActiveRecord::Migration[5.1]
  def change
    add_column :photos, :status, :integer, default: 0
    add_column :photos, :rating, :float, default: 1300.0
  end
end
