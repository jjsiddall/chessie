class AddPracticeIdAndExerciseIdToPlans < ActiveRecord::Migration
  def change
  	add_column :plans, :practice_id, :integer
  	add_column :plans, :exercise_id, :integer
  end
end
