require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
# 1. Load the third store and assign to @store3
@store3 = Store.find(3)
puts "Third store before deletion: #{@store3.name}"

# 2. Delete the store from the database
@store3.destroy
puts "Store deleted"

# 3. Verify the store has been deleted by checking the count
puts "Number of stores after deletion: #{Store.count}"

# Additional verification - try to find the deleted store
begin
  Store.find(3)
  puts "Store still exists!"
rescue ActiveRecord::RecordNotFound
  puts "Store with id=3 no longer exists in the database"
end