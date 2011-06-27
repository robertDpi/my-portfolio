# Developer specific local ENV vars needed for image upload and email sending with Heroku and AWS.
# Do not check this file into version control once you enter your specific secret data.

ENV['DOMAIN']            = 'your domain'
ENV['GMAIL_USERNAME']    = 'youruser@gmail.com'
ENV['GMAIL_PASSWORD']    = 'yourpassword'

# Uncomment these if  you want to test with S3 locally
# ENV['S3_KEY']            = 'yourS3key'
# ENV['S3_SECRET']         = 'yourS3password'
# ENV['S3_BUCKET']         = 'your-bucket'
