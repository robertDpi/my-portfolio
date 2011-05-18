class Contact
  include ActiveModel::Validations
  include ActiveModel::Conversion

  attr_accessor :name, :email, :body

  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i

  validates :name, :presence => true
  validates :email, :presence => true, :length => { :maximum => 100 }, :format => EMAIL_REGEX, :confirmation => true
  validates :body, :presence => true

  def initialize(attributes = {})
    (attributes || {}).each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end
end


