class ChangeOptions < ActiveRecord::Migration
  def change
    rename_column :options, :color, :color_one
    remove_column :options, :size
    add_column :options, :color_two, :string
  end
end
