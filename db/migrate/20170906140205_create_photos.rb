class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.integer :user_id
      t.float   :rating   
      t.string  :source
      t.integer :status
      t.integer :battle_id

      t.timestamps
    end
  end
end
