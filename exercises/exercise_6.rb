require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
# 3. Add employees to stores
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)

# 4. Create more employees for store1 (Burnaby)
@store1.employees.create(first_name: "Alex", last_name: "Smith", hourly_rate: 50)
@store1.employees.create(first_name: "Jordan", last_name: "Lee", hourly_rate: 55)
@store1.employees.create(first_name: "Taylor", last_name: "Wong", hourly_rate: 65)

# Create employees for store2 (Richmond)
@store2.employees.create(first_name: "Jamie", last_name: "Chen", hourly_rate: 70)
@store2.employees.create(first_name: "Casey", last_name: "Johnson", hourly_rate: 45)
@store2.employees.create(first_name: "Morgan", last_name: "Garcia", hourly_rate: 52)

# Output employee counts to verify
puts "Number of employees at #{@store1.name}: #{@store1.employees.count}"
puts "Number of employees at #{@store2.name}: #{@store2.employees.count}"

# Display all employees for verification
puts "\nAll employees:"
Employee.all.each do |employee|
  puts "#{employee.first_name} #{employee.last_name} works at #{employee.store.name}"
end