class Project < ActiveRecord::Base
  validates :title, :presence => true, :length => { :maximum => 50 }
  has_attached_file :cover,
                    :styles => {
                        :medium => "300x300>",
                        :thumb => "100x100>"
                    },
                    # Settings needed for image upload with Heroku and AWS
                    :storage => :s3,
                    :bucket => ENV['S3_BUCKET'],
                    :s3_credentials => { :access_key_id     => ENV['S3_KEY'],
                                         :secret_access_key => ENV['S3_SECRET'] }

end
