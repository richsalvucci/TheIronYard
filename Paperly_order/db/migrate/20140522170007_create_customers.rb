class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address
      t.string :state
      t.string :zipcode
      t.string :phone_number

      t.timestamps
    end
  end
end
