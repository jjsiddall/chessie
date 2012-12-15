class Exercise < ActiveRecord::Base
  attr_accessible :description, :strmoves, :start, :title, :lesson_id

  has_many :moves
  # belongs_to :lesson
  has_many :plan
end
