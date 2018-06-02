class PaymentsController < ApplicationController
  before_action :authenticate_user!
  require 'stripe'

    def create
      #byebug
      token = params[:stripeToken]
      @product = Product.find(params[:product_id])
      @user = current_user
      token = params[:stripeToken]

      # This will charge the user's card:
      begin
        charge = Stripe::Charge.create(
          :amount => (@product.price * 100).to_i,
          :currency => "cad",
          :source => token,
          :description => @product.description,
          :receipt_email => @user.email
        )
        if charge.paid
          Order.create(product_id: @product.id, user_id: @user.id, total: @product.price.to_i)
          flash[:notice] = "Hope your new Shiny brings you delight! #{@product.name}"
        end

      # When the card has been declined
      rescue Stripe::CardError => e
        body = e.json_body
        err = body[:error]
        flash[:error] = "Unfortunately, there was an error processing your payment: #{err[:message]}"
      end
      redirect_to product_path(@product), notice: "#{@product.name} has been purchased successfully!"
    end

end
