# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

Question.delete_all
# Create Questions
50.times do
  Question.create!(
    title:  Faker::Lorem.sentence,
    user_id: '2'
  )
end

puts "Seed finished"
puts "#{Question.count} quetions created"
