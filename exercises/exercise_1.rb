require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
stores = [
  {
    name: "Burnaby", 
    revenue: 300000, 
    mens_apparel: true, 
    womens_apparel: true
  }, 
  {
    name: "Richmond", 
    revenue: 1260000, 
    mens_apparel: false, 
    womens_apparel: true
  }, 
  {
    name: "Gastown", 
    revenue: 190000, 
    mens_apparel: true, 
    womens_apparel: false
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

puts Store.count