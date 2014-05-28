class Order < ActiveRecord::Base
has_many :purchase_orders
has_many :products, through: :purchase_orders
has_many :customers, through: :purchase_orders
accepts_nested_attributes_for :products, allow_destroy: true
end
