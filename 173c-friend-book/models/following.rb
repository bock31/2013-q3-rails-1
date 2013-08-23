class Following < ActiveRecord::Base
  belongs_to :from_person, class_name: "Person"
  belongs_to :to_person,   class_name: "Person"
  
  validates :from_person_id, presence: true
  validates :to_person_id,   presence: true
end