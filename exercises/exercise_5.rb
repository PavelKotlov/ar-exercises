require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Store.sum(:annual_revenue)
puts "Total Company Revenue: #{total_revenue}"

avg_total_revenue = Store.average(:annual_revenue)
puts "Average Store Revenue: #{avg_total_revenue}"

one_million_stores = Store.where("annual_revenue > ?", 1000000).count
puts "Number of stores that make more than a million per year in revenue: #{one_million_stores}"