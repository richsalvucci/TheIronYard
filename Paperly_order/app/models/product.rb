class Product < ActiveRecord::Base
  has_many :options
  accepts_nested_attributes_for :options, allow_destroy: true

  @products = Product.all
  LIST = @products.map{|pro| [pro.name, pro.id]}
end
