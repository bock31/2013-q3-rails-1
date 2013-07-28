class CreateWorldCities < ActiveRecord::Migration
  def up
    create_table :world_cities do |t|
      t.string :city_name
      t.text :country
      t.string :time_zone
      t.string :population
    end
  end

  def down
    drop_table :world_cities
  end
end
