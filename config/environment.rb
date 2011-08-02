# Load the rails application
require File.expand_path('../application', __FILE__)

# Initializer needed for image upload with Heroku and AWS
heroku_env = File.join(Rails.root.to_s, 'config', 'heroku_env.rb')
load(heroku_env) if File.exists?(heroku_env)

# Set haml to HTML5
Haml::Template.options[:format] = :html5

# Initialize the rails application
PortfolioWebsite::Application.initialize!
