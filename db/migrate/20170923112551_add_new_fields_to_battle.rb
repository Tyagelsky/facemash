class AddNewFieldsToBattle < ActiveRecord::Migration[5.1]
  def change
    add_column :battles, :photo_looser_id, :integer
    add_index :battles, :photo_looser_id
    add_column :battles, :photo_winner_id, :integer
    add_index :battles, :photo_winner_id
  end
end
