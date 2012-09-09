class AddArchiveIdToStories < ActiveRecord::Migration
  def change
    add_column :stories, :archive_id, :string
  end
end
