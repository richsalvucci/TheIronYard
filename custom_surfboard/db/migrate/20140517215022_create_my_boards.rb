class CreateMyBoards < ActiveRecord::Migration
  def change
    create_table :my_boards do |t|
      t.integer :surfboard_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
