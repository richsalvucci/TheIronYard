class CustomersController < ApplicationController
  before_filter :find_customer, only: [ :show, :edit, :update, :destroy]
  def index
    @customers = Customer.all
  end

  def show
    
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.create customer_params
    redirect_to customers_path
  end

  def edit
    
  end

  def update
    @customer.update_attributes customer_params
    redirect_to customers_path
  end

  def destroy
     @customer.delete 
    redirect_to root_path
  end
private
  def find_customer
    puts params
    @customer = Customer.find params[:id]
  end

  def customer_params
    params.require(:customer).permit(:name,
      :address,
      :state,
      :zipcode,
      :phone_number)
  end 
end
