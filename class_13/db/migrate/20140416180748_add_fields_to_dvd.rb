class AddFieldsToDvd < ActiveRecord::Migration
  def change
    add_column :dvds, :description, :text
  end
end
