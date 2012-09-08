class CreateRoasts < ActiveRecord::Migration
  def change
    create_table :roasts do |t|
      t.string :roastee
      t.date :showDate
      t.time :shoeTime

      t.timestamps
    end
  end
end
