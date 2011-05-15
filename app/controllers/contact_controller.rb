class ContactController < ApplicationController
  def new
    @contact = Contact.new
  end

  def contact_mail
    @contact = Contact.new(params[:contact])
    # puts @contact.inspect
    
    if @contact.valid?
      Notification.contact_me(@contact).deliver
      redirect_to root_path, :notice => "Thanks! It's nice to hear from you!"
    else
      render :new, :notice => "Please correct the errors below"
    end
  end
end
