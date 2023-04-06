require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "Please type a store name:"
store_name = gets.chomp

store = Store.new
store.name = store_name
store.save

store.errors.each do |error|

  puts "Please fix the following error: #{error.attribute} is #{error.type}"
end
