# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

person1 = Person.create! name: "Jill"
person2 = Person.create! name: "Jack"

rmr = Event.create! name: "Rocky Mountain Ruby", city: "Boulder", state: "CO"
ib  = Event.create! name: "Ignite Boulder", city: "Boulder", state: "CO"
rc  = Event.create! name: "Rails Conference", city: "Portland", state: "OR"
bb  = Event.create! name: "Big Boulder", city: "Boulder", state: "CO"

Registration.create! person: person1, event: rmr
Registration.create! person: person2, event: rmr
Registration.create! person: person2, event: ib

hb = Hotel.create! name: "Hotel Boulderado", city: "Boulder", state: "CO"
bm = Hotel.create! name: "Boulder Marriott", city: "Boulder", state: "CO"
mh = Hotel.create! name: "Millenium Hotel", city: "Boulder", state: "CO"
bi = Hotel.create! name: "Boulder Inn", city: "Boulder", state: "CO"
st = Hotel.create! name: "St. Julien", city: "Boulder", state: "CO"
dt = Hotel.create! name: "Double Tree", city: "Portland", state: "OR"
cp = Hotel.create! name: "Crowne Plaza", city: "Portland", state: "OR"
rl = Hotel.create! name: "Red Lion", city: "Portland", state: "OR"
cy = Hotel.create! name: "Courtyard", city: "Portland", state: "OR"

RecommendedHotel.create! event: rmr, hotel: hb
RecommendedHotel.create! event: rmr, hotel: mh
RecommendedHotel.create! event: rmr, hotel: bi
RecommendedHotel.create! event: rc, hotel: dt
RecommendedHotel.create! event: rc, hotel: cp
RecommendedHotel.create! event: rc, hotel: rl
RecommendedHotel.create! event: rc, hotel: cy
RecommendedHotel.create! event: bb, hotel: st
RecommendedHotel.create! event: bb, hotel: hb
RecommendedHotel.create! event: bb, hotel: bm

Venue.create! name: "Boulder Theater", city: "Boulder", state: "CO"
Venue.create! name: "St. Julien", city: "Boulder", state: "CO"
Venue.create! name: "Oregon Convention Center", city: "Portland", state: "OR"




