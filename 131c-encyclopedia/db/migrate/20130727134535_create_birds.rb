class CreateBirds < ActiveRecord::Migration
  def up
    create_table :birds do |t|
      t.string :name
      t.text :definition
    end
  end

  def down
    drop_table :birds
  end
end
