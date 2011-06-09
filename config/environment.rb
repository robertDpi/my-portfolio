# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
PortfolioWebsite::Application.initialize!

# Mailer
config.action_mailer.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
  :address  => "smtp.portfolio-site.heroku.com",
  :port  => 25,
  :user_name  => "site@portfolio-site.heroku.com",
  :password  => "ambar",
  :authentication  => :login
}

config.action_mailer.raise_delivery_errors = true