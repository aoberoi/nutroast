class Story < ActiveRecord::Base
  belongs_to :roast
  belongs_to :user
  attr_accessible :title
end
