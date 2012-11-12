class Exercise < ActiveRecord::Base
  attr_accessible :description, :strmoves, :start, :title

  has_many :moves, :dependent => :destroy
end
