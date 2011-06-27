class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable,  :registerable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me

  # Virtual attribute for authenticating by either username or email
  # This is in addition to a real persisted field like 'username'
  attr_accessor :login
  attr_accessible :login

  protected

  def self.find_for_database_authentication(warden_conditions)
    puts 'asdasdasd*******************************************************************'
   conditions = warden_conditions.dup
   login = conditions.delete(:login)
   where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
  end
end
