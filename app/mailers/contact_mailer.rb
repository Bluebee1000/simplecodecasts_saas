class ContactMailer < ActionMailer::Base
	default to: 'am.i.evol1986@gmail.com'
	
	def contact_email(name, email, body) 
		@name = name
		@email = email
		@body = body
		
		mail(from: email, subject: 'Contact Form Messaging')
	end
end