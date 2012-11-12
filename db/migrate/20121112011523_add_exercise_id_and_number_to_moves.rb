class AddExerciseIdAndNumberToMoves < ActiveRecord::Migration
  def change
  	add_column :moves, :exercise_id, :integer
  	add_column :moves, :move_number, :integer
  end
end
