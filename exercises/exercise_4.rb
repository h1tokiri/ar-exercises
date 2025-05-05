require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
# 1. Create 3 more stores
Store.create(
  name: "Surrey",
  annual_revenue: 224000,
  mens_apparel: false,
  womens_apparel: true
)

Store.create(
  name: "Whistler",
  annual_revenue: 1900000,
  mens_apparel: true,
  womens_apparel: false
)

Store.create(
  name: "Yaletown",
  annual_revenue: 430000,
  mens_apparel: true,
  womens_apparel: true
)

# 2. Fetch stores that carry men's apparel
@mens_stores = Store.where(mens_apparel: true)

# 3. Loop through and output the men's stores
puts "Stores that carry men's apparel:"
@mens_stores.each do |store|
  puts "#{store.name} - Annual Revenue: $#{store.annual_revenue}"
end

# 4. Fetch stores that carry women's apparel and generate less than $1M
@womens_low_revenue_stores = Store.where(womens_apparel: true).where("annual_revenue < 1000000")

puts "\nStores that carry women's apparel and generate less than $1M:"
@womens_low_revenue_stores.each do |store|
  puts "#{store.name} - Annual Revenue: $#{store.annual_revenue}"
end