class ContactMailer < ActionMailer::Base
  default to: "ryanvalle@me.com"

  def contact_message(sender)
  	@contact = sender
  	mail :from => sender.email, :subject => 'ryanvalle.me inquiry'
  end
end
