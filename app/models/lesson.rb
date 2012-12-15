class Lesson < ActiveRecord::Base
  attr_accessible :description, :title

  has_many :exercises
  has_many :practices
  has_many :plans
end
