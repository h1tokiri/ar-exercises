require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
# 1. Output the total revenue for the entire company
total_revenue = Store.sum(:annual_revenue)
puts "Total revenue for the company: $#{total_revenue}"

# 2. Output the average annual revenue for all stores
average_revenue = Store.average(:annual_revenue)
puts "Average revenue per store: $#{average_revenue.to_i}"

# 3. Output the number of stores generating $1M or more in annual sales
high_performing_stores = Store.where("annual_revenue >= 1000000").count
puts "Number of stores generating $1M or more: #{high_performing_stores}"