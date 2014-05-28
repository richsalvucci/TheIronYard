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
    @options = Option.all
  end

  def create
    @order = Order.create order_params
    redirect_to orders_path
  end

  def edit
    
  end

  def update
    @order.update_attributes order_params
    redirect_to orders_path
  end

  def destroy
    @order.delete 
    redirect_to root_path
  end
private
  def find_order
    @order = Order.find params[:id]
  end

  def order_params
    puts params.inspect
    params.require(:order).permit(:customer_name,
      :customer_id,
      :product_id,
      :personalization,
      :color_one,
      :pattern,
      :color_two,
      products_attributes: [:product,:name, :_destroy])
  end 
end
