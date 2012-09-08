class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.references :roast
      t.references :user
      t.string :title

      t.timestamps
    end
    add_index :stories, :roast_id
    add_index :stories, :user_id
  end
end
