require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store
  has_many :employees
end

class Employee
  belongs_to :store
end

@store1.employees.create(first_name: "Mitch", last_name: "ONeill", hourly_rate: 10)
@store1.employees.create(first_name: "Enna", last_name: "Dog", hourly_rate: 10)
@store2.employees.create(first_name: "Emily", last_name: "Masching", hourly_rate: 50)
@store2.employees.create(first_name: "Louisa", last_name: "The Cat", hourly_rate: 40)
