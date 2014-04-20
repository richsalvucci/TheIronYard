class AddNewColumn < ActiveRecord::Migration
  def change
    add_column :patients, :notes, :text
  end
end
