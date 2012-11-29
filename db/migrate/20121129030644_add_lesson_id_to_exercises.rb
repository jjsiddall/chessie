class AddLessonIdToExercises < ActiveRecord::Migration
  def change
  	add_column :exercises, :lesson_id, :integer
  end
end
