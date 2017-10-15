class AddRoomIdColumnToSolveMarkers < ActiveRecord::Migration[5.1]
  def change
    add_column :solve_markers, :room_id, :integer
  end
end
