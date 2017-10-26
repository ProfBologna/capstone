class CreateItemStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :item_statuses do |t|
      t.integer :game_id
      t.integer :item_id
      t.boolean :held

      t.timestamps
    end
  end
end
