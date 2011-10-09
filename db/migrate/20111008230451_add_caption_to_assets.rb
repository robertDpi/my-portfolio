class AddCaptionToAssets < ActiveRecord::Migration
  def self.up
    add_column :assets, :caption, :string
  end

  def self.down
    remove_column :assets, :caption
  end
end
