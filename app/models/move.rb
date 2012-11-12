class Move < ActiveRecord::Base
  attr_accessible :ending_coordinate, :explaination, :piece, :starting_coordinate, :exercise_id

  belongs_to :exercise
end
