class AddBattleToPhotos < ActiveRecord::Migration[5.1]
  def change
    add_column :photos, :count_battles, :integer
    add_column :photos, :count_win_battles, :integer
    add_column :photos, :count_loose_battles, :integer
  end
end
