class AddDucksTable < ActiveRecord::Migration
  def up
    create_table :ducks do |t|
      t.string :gender
      t.integer :weight
      t.integer :wingspan
    end
      
    create_table :geese do |t|
      t.string :gender
      t.integer :weight
      t.integer :wingspan
    end
  end
      
  def down
    drop_table :ducks
    drop_table :geese
  end
end
