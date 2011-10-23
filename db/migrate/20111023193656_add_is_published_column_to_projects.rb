class AddIsPublishedColumnToProjects < ActiveRecord::Migration
  def self.up
    add_column :projects, :is_published, :boolean, :default => true
  end

  def self.down
    remove_column :projects, :is_published
  end
end
