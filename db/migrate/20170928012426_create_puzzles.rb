class CreatePuzzles < ActiveRecord::Migration[5.1]
  def change
    create_table :puzzles do |t|
      t.integer :room_id
      t.string :prompt
      t.string :question
      t.string :answer
      t.string :hint

      t.timestamps
    end
  end
end
