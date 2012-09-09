class ChangeFieldsInRoast < ActiveRecord::Migration
	def change
		remove_column :roasts, :showTime
		remove_column :roasts, :showDate
		add_column :roasts, :showDateTime, :datetime
	end
end
