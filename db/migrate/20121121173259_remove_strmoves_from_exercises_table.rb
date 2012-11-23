class RemoveStrmovesFromExercisesTable < ActiveRecord::Migration
  def up
  	 remove_column :exercises, :strmoves
  end

  def down
  	add_column :exercises, :strmoves, :text
  end
end
