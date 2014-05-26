class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :color
      t.string :pattern
      t.string :size

      t.timestamps
    end
  end
end
