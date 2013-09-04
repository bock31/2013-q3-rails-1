class CreateRecommendedHotels < ActiveRecord::Migration
  def change
    create_table :recommended_hotels do |t|
      t.integer :event_id
      t.integer :hotel_id

      t.timestamps
    end
  end
end
