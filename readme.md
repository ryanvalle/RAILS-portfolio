# RAILS: Portfolio Website
This is the code to my portfolio website built on top of Rails 4.

# Installation
On your first run, you will need to add in the Settings DB values. In console:
* rails console
* s = Settings.new
* s.sitetitle
* s.sitedescription
* s.siteemail
* s.siteowner
* s.save
* u = User.new
* u.name
* u.password
* u.remember_token = SecureRandom.urlsafe_base64
* u.save
* u.password_confirmation
* u.save

This should get you started with a functioning site

# Files to Edit
The site (at it's current version) is not very dynamic to control the content. I could possibly build it out, but we'll see...

To update content, look at these files:
* Global Header & footer => app/layouts/header app/layouts/footer
* Homepage about => app/layouts/about
* resume page => app/pages/resume
* contact page => app/pages/contact
* mail configuration (server) => config/initializers/setup_mail.rb
* mail configuration (header) => app/mailers/contact_mailer.rb

DB driven content
* Homepage recent
* Portfolio pages (web, video, photography)
* Site title and descriptino (sub title)
* Contact form e-mail address