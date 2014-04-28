class ChangeTypesOnDoctor < ActiveRecord::Migration
  def change
    add_column :doctors, :surname, :text
    remove_column :doctors, :name, :string
  end

end
