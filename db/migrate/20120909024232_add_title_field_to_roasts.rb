class AddTitleFieldToRoasts < ActiveRecord::Migration
  def change
    add_column :roasts, :title, :string
  end
end
