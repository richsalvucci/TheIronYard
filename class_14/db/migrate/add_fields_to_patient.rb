class AddFieldsToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :notes, :text
  end
end