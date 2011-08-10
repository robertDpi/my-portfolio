class Project < ActiveRecord::Base
  validates :title, :presence => true, :length => { :maximum => 50 }
  has_attached_file :cover,
                    {
                      :styles => {
                          :thumb => "182x142>"
                      },
                    }.merge(Rails.configuration.paperclip_storage)


end
