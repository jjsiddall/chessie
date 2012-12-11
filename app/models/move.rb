class Move < ActiveRecord::Base
  attr_accessible :ending_coordinate, :explaination, :piece, :starting_coordinate, :exercise_id, :move_number, :practice_id

  belongs_to :exercise
  belongs_to :practice
end
