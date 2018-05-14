class SimplePagesController < ApplicationController

  def index
  end

  def landing_page
    @products = Product.limit(3)
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    ActionMailer::Base.mail(from: @email,
      to: 'tab.codes@gmail.com',
      subject: "Here's a message from #{@name}",
      body: @message).deliver_now
  end

end
