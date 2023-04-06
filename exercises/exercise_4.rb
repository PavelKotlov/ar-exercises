require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
stores = [
  {
    name: "Surrey", 
    revenue: 224000, 
    mens_apparel: false, 
    womens_apparel: true
  }, 
  {
    name: "Whistler", 
    revenue: 1900000, 
    mens_apparel: true, 
    womens_apparel: false
  }, 
  {
    name: "Yaletown", 
    revenue: 430000, 
    mens_apparel: true, 
    womens_apparel: true
  }
]

stores.each do |current_store|
  store = Store.new
  store.name = current_store[:name]
  store.annual_revenue = current_store[:revenue]
  store.mens_apparel = current_store[:mens_apparel]
  store.womens_apparel = current_store[:womens_apparel]
  store.save
end

@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each do |store|
  puts "Name #{store.name}, Revenue: #{store.annual_revenue}"
end

@womens_stores = Store.where("womens_apparel = ? AND annual_revenue < ?", true, 1000000)
@womens_stores.each do |store|
  puts "Name #{store.name}, Revenue: #{store.annual_revenue}"
end