class OrdersController < ApplicationController
  before_filter :find_order, only: [ :show, :edit, :update, :destroy]
  def index
    @orders = Order.all
  end

  def show
    
  end

  def new
    @order = Order.new
    @products = Product.all
  end

  def create
    @order = Order.create order_params
    redirect_to custmoer_orders_path
  end

  def edit
    
  end

  def update
    @order.update_attributes order_params
    redirect_to orders_path
  end

  def destoy
    @order.delete order_params
    redirect_to root_path
  end
private
  def find_order
    @order = Order.find params[:id]
  end

  def order_params
    params.require(:order).permit(:customer_name,
      :customer_id,
      :product_id,
      products_attributes: [:product,:order_id, :_destroy])
  end 
end