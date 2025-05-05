require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
# 1. Load the first store and assign to @store1
@store1 = Store.find(1)
puts "First store: #{@store1.name}"

# 2. Load the second store and assign to @store2
@store2 = Store.find(2)
puts "Second store: #{@store2.name}"

# 3. Update the first store
@store1.name = "Burnaby Updated"
@store1.save

# Verify the update worked
puts "Updated first store name: #{Store.find(1).name}"