# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

microsoft = Company.create! name: "Microsoft"
ibm = Company.create! name: "IBM"
sun = Company.create! name: "Sun"

Person.create! name: "John", company: microsoft
Person.create! name: "Jill", company: ibm
Person.create! name: "Jack", company: ibm
Person.create! name: "Ursula", company: nil