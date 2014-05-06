class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :workflow_state
      t.text :description
      t.timestamps
    end
  end
end
