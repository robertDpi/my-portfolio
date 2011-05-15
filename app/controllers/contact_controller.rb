class ContactController < ApplicationController
  def new
    @contact = Contact.new
  end

  def contact_mail
    @contact = Contact.new(params[:contact])
    puts @contact.inspect + "***************************"
    if @contact.valid?
      Notification.contact_me(@contact).deliver

       puts "Lala" + @contact.inspect + "OK"
      redirect_to root_path, :notice => "Email sent, we'll get back to you"
    else
      puts "Lala" + @contact.inspect + "ERROR"
      render :new, :notice => "Errors"
    end
  end
end
