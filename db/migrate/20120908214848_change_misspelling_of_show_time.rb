class ChangeMisspellingOfShowTime < ActiveRecord::Migration
	def change
		rename_column :roasts, :shoeTime, :showTime
	end
end
