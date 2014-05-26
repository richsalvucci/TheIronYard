class OptionsController < ApplicationController
  before_filter :find_product
  before_filter :find_options, only: [ :show, :edit, :update, :destroy, :index]

   def index
    @options = Option.all
  end

  def show
    
  end

  def new
    @option = @product.options.new
  end

  def create
    @option = @product.options.create product_params
    redirect_to root_path
  end

  def edit
    
  end

  def update
    @option.update_attributes product_params
    redirect_to root_path
  end

  def destoy
     @product.delete product_params
    redirect_to root_path
  end
private
  def find_product
    @product = Product.find params[:id]
  end

  def find_options
    @product = Option.find params[:id]
  end
end
