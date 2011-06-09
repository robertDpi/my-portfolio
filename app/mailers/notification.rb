class Notification < ActionMailer::Base

  def contact_me(contact)
    @contact = contact
  end

end

