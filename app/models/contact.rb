class Contact
  include ActiveModel::Validations
  include ActiveModel::Conversion
  
  attr_accessor :name, :email, :message

  # TODO: Improve regex
  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i

  validates :name, :presence => true
  validates :email, :presence => true, :length => { :maximum => 100 }, :format => EMAIL_REGEX, :confirmation => true
  validates :message, :presence => true

  def initialize(attributes = {})
    (attributes || {}).each do |name, value|
      send("#{name}=", value)
    end
    #Notification.contact_me(self)
  end

  def persisted?
    false
  end

end



