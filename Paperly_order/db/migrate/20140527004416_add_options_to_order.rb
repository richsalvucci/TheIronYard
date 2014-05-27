class AddOptionsToOrder < ActiveRecord::Migration
  def change
    add_column :options, :personalization, :string
    add_column :orders, :personalization, :string
    add_column :orders, :color_one, :string
    add_column :orders, :pattern, :string
    add_column :orders, :color_two, :string
  end
end
