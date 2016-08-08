class ContactUs < ApplicationMailer

 def confirmation_contact_us(contact_us)
    @contact_us = contact_us
    mail(to: @contact_us.email, subject: 'Welcome to My Fitness Club')
    
  end

  def contact_us_mail_for_support(contact_us)
  	@contact_us = contact_us
  	@mail = 'support@myfitnessclub.in'
  	mail(to: @mail, subject: 'My Fitness Club : Contact us')
  end

end
