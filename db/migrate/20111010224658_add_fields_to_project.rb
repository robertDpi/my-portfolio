class AddFieldsToProject < ActiveRecord::Migration
  def self.up
    add_column :projects, :role, :string
    add_column :projects, :agency, :string
    add_column :projects, :technologies, :string
    add_column :projects, :live_site, :string
    add_column :projects, :year, :string
    add_column :projects, :order, :integer
  end

  def self.down
    remove_column :projects, :role
    remove_column :projects, :agency
    remove_column :projects, :technologies
    remove_column :projects, :live_site
    remove_column :projects, :year
    remove_column :projects, :order
  end
end
