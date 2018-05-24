class UserMailer < ApplicationMailer
  default from: "tab.codes@gmail.com"
  layout 'mailer'

  def contact_form(email, name, message)
    @email = email
    @name = name
    @message = message
    mail(from: email,
         to: 'tab.codes@gmail.com',
         subject: "A new contact form message from #{name}")
  end

  def welcome(user)
    @appname = "Shiny Objects Source"
    mail(to: @user,
      subject: "Hey! Welcome to #{@appname}!")
  end

end
