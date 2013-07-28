# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

WorldCity.create(
  city_name: 'London',
  country: 'United Kingdom',
  time_zone: 'GMT+0',
  population: "8.3")

WorldCity.create(
  city_name: 'New York',
  country: 'United States of America',
  time_zone: 'GMT-5',
  population: "8.3");

WorldCity.create(
  city_name: 'Shanghai',
  country: 'China',
  time_zone: 'GMT+8',
  population: "23");