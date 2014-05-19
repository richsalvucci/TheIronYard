class CreateSurfboards < ActiveRecord::Migration
  def change
    create_table :surfboards do |t|
      t.string :board_type
      t.string :materials
      t.string :graphics
      t.string :fin_setup
      t.string :fin_type
      t.string :tail
      t.string :glassing
      t.float :length
      t.float :width
      t.float :thickness
      t.text :special_instructions

      t.timestamps
    end
  end
end
