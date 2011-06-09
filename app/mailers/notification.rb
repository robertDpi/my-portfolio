class Notification < ActionMailer::Base

  def contact_me(contact)
    # subject    "Contact from Site"
    # sent_on    Time.now
    @contact = contact
  end

end

