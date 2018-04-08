class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  def index
    @orders = Order.includes(:product).all
  end

  def show
  end

  def new
  end

  def create
  end

  def destroy
  end


end
