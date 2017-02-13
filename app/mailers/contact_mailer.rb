class ContactMailer < ActionMailer::Base
  default to: 'o@jsand.co'
  
  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body
    
    mail(from: email, subject: 'DevMatch: Contact Us Message')
  end
end