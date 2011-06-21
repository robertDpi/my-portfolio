class Project < ActiveRecord::Base
  validates :title, :presence => true, :length => { :maximum => 50 }
  has_attached_file :cover,
                    {
                      :styles => {
                          :medium => "300x300>",
                          :thumb => "100x100>"
                      },
                    }.merge(Rails.configuration.paperclip_storage)


end
