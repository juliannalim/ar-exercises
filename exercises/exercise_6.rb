require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Austin", last_name: "McKillip", hourly_rate: 30)
@store2.employees.create(first_name: "Julianna", last_name: "Lim", hourly_rate: 60)
@store1.employees.create(first_name: "Heather", last_name: "McKinley", hourly_rate: 50)