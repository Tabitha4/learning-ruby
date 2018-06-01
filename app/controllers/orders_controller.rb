class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  def index
    @orders = Order.includes(:product, :user).where(user_id: current_user.id).all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
    @product = Product.find(params[:product_id])
    @order = @product.orders.build(product: @product)
    @order.user = current_user
    @order.total = @product.price
    if @order.save
      redirect_to order_path(@order)
      flash[:notice] = "Shiny ordered successfully!"
    else
      flash[:error] = "Rut row...something went wrong!"
    end
  end

  def destroy
  end


end
