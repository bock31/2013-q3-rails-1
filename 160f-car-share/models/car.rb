class Car < ActiveRecord::Base
  belongs_to :member, class_name: "Member",
    foreign_key: "reserving_member_id"
end
