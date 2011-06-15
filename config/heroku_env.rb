# Developer specific local ENV vars needed for image upload and email sending with Heroku and AWS.
# Do not check this file into version control once you enter your specific secret data.

ENV['GMAIL_USERNAME']    = 'yoursecretdata'
ENV['GMAIL_PASSWORD']    = 'yoursecretdata'
ENV['S3_KEY']            = 'yoursecretdata'
ENV['S3_SECRET']         = 'yoursecretdata'
ENV['S3_BUCKET']         = 'yoursecretdata'