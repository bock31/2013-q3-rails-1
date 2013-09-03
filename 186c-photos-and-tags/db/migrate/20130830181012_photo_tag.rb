class PhotoTag < ActiveRecord::Migration
  def change
    create_table :photo_tag, id: false do |t|
      t.integer :photo_id
      t.integer :tag_id
    end
  end
end
