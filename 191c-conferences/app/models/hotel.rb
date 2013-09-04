class Hotel < ActiveRecord::Base
  has_many :recommended_hotels
  has_many :events, through: :recommended_hotels
end
