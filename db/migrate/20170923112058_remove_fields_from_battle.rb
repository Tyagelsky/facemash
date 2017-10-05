class RemoveFieldsFromBattle < ActiveRecord::Migration[5.1]
  def change
    remove_column :battles, :photo_looser, :integer
    remove_column :battles, :photo_winner, :integer
  end
end
