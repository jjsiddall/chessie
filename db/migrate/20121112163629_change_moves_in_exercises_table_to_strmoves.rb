class ChangeMovesInExercisesTableToStrmoves < ActiveRecord::Migration
  def change
  	rename_column :exercises, :moves, :strmoves
  end
end
