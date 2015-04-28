Restaurant.create! ({
  :name => "Tasty food place",
  :url => "go here!",
  :open_time => Time.new(7),
  :close_time => Time.new(14)
  })

Restaurant.create! ({
  :name => "Food here, too",
  :url => "website",
  :open_time => Time.new(11),
  :close_time => Time.new(22)
  })

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
