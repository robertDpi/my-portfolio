class Project < ActiveRecord::Base
  validates :title, :presence => true, :length => { :maximum => 50 }
  has_attached_file :cover,
                    {
                      :styles => {
                          :thumb => "170x133"
                          #:full_width => "618>x500"
                      },
                    }.merge(Rails.configuration.paperclip_storage)


end
