class Photo < ActiveRecord::Base
  has_and_belongs_to_many :tags, join_table: "photo_tag",
    class_name: "Tag", foreign_key: "photo_id",
    association_foreign_key: "tag_id"
end
