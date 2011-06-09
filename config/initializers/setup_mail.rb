ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "localhost:3000",
  :user_name            => "skell.site.testing@gmail.com",
  :password             => "Nm456123753",
  :authentication       => "plain",
  :enable_starttls_auto => true
}