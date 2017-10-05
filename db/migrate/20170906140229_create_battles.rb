class CreateBattles < ActiveRecord::Migration[5.1]
  def change
    create_table :battles do |t|
      t.integer :photo_winner
      t.integer :photo_looser

      t.timestamps
    end
  end
end
