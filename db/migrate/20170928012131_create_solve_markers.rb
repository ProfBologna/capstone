class CreateSolveMarkers < ActiveRecord::Migration[5.1]
  def change
    create_table :solve_markers do |t|
      t.integer :user_id
      t.integer :puzzle_id
      t.integer :game_id

      t.timestamps
    end
  end
end
