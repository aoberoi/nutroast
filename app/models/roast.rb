class Roast < ActiveRecord::Base
  attr_accessible :roastee, :showTime, :showDate, :title

  has_many :stories
end
