class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :puzzle_id
      t.integer :room_id

      t.timestamps
    end
  end
end
