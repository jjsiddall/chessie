class Exercise < ActiveRecord::Base
  attr_accessible :description, :strmoves, :start, :title, :lesson_id

  has_many :moves, :dependent => :destroy
  belongs_to :lesson
end
