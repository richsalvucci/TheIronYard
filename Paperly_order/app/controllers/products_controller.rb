class ProductsController < ApplicationController
  before_filter :find_product, only: [ :show, :edit, :update, :destroy]
  def index
    @products = Product.all
  end

  def show
    
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create product_params
    redirect_to products_path
  end

  def edit
    
  end

  def update
    @product.update_attributes product_params
    redirect_to products_path
  end

  def destroy
    @product.delete 
    redirect_to root_path
  end
private
  def find_product
    @product = Product.find params[:id]
  end

  def product_params
    params.require(:product).permit(:name,
      :price,
      :description,
      :product_type,
      options_attributes: [:color_one,:color_two,:pattern,:personalization, :_destroy])
  end 
end
