class Roast < ActiveRecord::Base
  attr_accessible :roastee, :showTime, :showDate

  has_many :stories

  
end
