class Asset < ActiveRecord::Base
  belongs_to :project
  has_attached_file :asset, :styles => {:thumb => "100x100!", :large => "618x480>"}
end
