class Product < ActiveRecord::Base
  has_many :options
  accepts_nested_attributes_for :options, allow_destroy: true
  has_many :purchase_orders
  has_many :orders, through: :purchase_orders
  has_many :customers, through: :purchase_orders

  @products = Product.all
  LIST = @products.map{|pro| [pro.name, pro.id]}
end
