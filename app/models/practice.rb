class Practice < ActiveRecord::Base
  attr_accessible :lesson_id, :start, :title

  has_many :moves
  belongs_to :lesson
  has_many :plan
end
