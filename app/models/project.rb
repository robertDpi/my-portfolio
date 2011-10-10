class Project < ActiveRecord::Base
  attr_accessible :title, :subtitle, :description, :cover, :assets_attributes, :order, :role, :agency, :technologies, :live_site, :year
  validates :title, :presence => true, :length => { :maximum => 50 }
  has_attached_file :cover,
                    {
                      :styles => {
                          :thumb => "170x133"
                      },
                    }.merge(Rails.configuration.paperclip_storage)
  has_many :assets, :dependent => :destroy
  accepts_nested_attributes_for :assets, :reject_if => lambda { |a| a[:caption].blank? }, :allow_destroy => true
end
