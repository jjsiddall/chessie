class Lesson < ActiveRecord::Base
  attr_accessible :description, :title

  has_many :exercises

end
