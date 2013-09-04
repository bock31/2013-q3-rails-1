class Event < ActiveRecord::Base
  has_many :registrations
  has_many :people, through: :registrations
  
  has_many :recommended_hotels
  has_many :hotels, through: :recommended_hotels
end
