class CreateDvds < ActiveRecord::Migration
  def change
    create_table :dvds do |t|
      t.string :title
      t.string :release 
      t.string :genre
      t.string :director
      t.string :rating
      t.string :actors
      t.string :length
      t.timestamps
    end
  end
end
