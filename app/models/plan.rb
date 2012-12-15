class Plan < ActiveRecord::Base
  attr_accessible :lesson_id, :unit_id, :unit_type, :exercise_id, :practice_id

  belongs_to :lesson
  belongs_to :exercise
  belongs_to :practice
end
