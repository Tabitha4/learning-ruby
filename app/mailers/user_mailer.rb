class UserMailer < ApplicationMailer
  default from: "from@example.com"

  def contact_form(email, name, message)
  @message = message
    mail(from: email,
         to: 'tab.codes@gmail.com',
         subject: "A new contact form message from #{name}")
  end
end