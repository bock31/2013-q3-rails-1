# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

person1 = Person.create! name: "Eve"
person2 = Person.create! name: "Ed"
person2 = Person.create! name: "Tony"

Tool.create! name: "bandsaw",     person: person1
Tool.create! name: "drill press", person: person1
Tool.create! name: "lathe",       person: person2
Tool.create! name: "planer",      person: nil