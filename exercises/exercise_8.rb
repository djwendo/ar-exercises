require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

lyle = @store2.employees.create(first_name: "Lyle", last_name: "Brown", hourly_rate: 80)

puts lyle.password