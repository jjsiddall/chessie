class Move < ActiveRecord::Base
  # "computer" is used to determine if the user should make the move (for practice and tests) or if the page should
  attr_accessible :ending_coordinate, :explaination, :piece, :starting_coordinate, :exercise_id, :move_number, :practice_id, :computer

  belongs_to :exercise
  belongs_to :practice
end
