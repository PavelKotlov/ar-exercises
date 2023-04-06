require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
employees = [
  {
    first_name: "Bob",
    last_name: "Cat",
    hourly_rate: 100
  },
  {
    first_name: "John",
    last_name: "Smith",
    hourly_rate: 80
  },
  {
    first_name: "Jane",
    last_name: "Doe",
    hourly_rate: 180
  },
  {
    first_name: "Larry",
    last_name: "Jones",
    hourly_rate: 150
  },
  {
    first_name: "Shoshana",
    last_name: "Liberman",
    hourly_rate: 40
  },
]

employees.each do |employee|
  @store1.employees.create(
    first_name: employee[:first_name], 
    last_name: employee[:last_name], 
    hourly_rate: employee[:hourly_rate]
  )
end

employees.reverse.each do |employee|
  @store2.employees.create(
    first_name: employee[:first_name], 
    last_name: employee[:last_name], 
    hourly_rate: employee[:hourly_rate]
  )
end