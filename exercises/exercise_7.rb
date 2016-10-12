require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require 'byebug'
puts "Exercise 7"
puts "----------"

class Store
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality:  { only_integer: true, greater_than: 0 }

end

class Employee
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than: 40, less_than: 200 }
  validates :store, :length => { :minimum => 1 }
end

puts "Which store do you want to make?"
custom_store = gets.chomp
custom_store = Store.create(name: "custom_store")

if !custom_store.valid?
  puts custom_store.valid?
  byebug
  puts custom_store.errors.full_message
end

