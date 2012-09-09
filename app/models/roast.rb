class Roast < ActiveRecord::Base
  attr_accessible :roastee, :showDateTime, :title

  has_many :stories

	def started?
		showDateTime <= DateTime.now
	end

end
