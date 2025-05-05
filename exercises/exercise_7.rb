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
# 2. Ask the user for a store name
puts "Enter a store name:"
@store_name = gets.chomp

# 3. Attempt to create a store with the inputted name but leave out the other fields
@store = Store.new(name: @store_name)

# 4. Save the store and display any error messages
if @store.save
  puts "Store was saved successfully!"
else
  puts "Error(s):"
  @store.errors.full_messages.each do |message|
    puts "- #{message}"
  end
end