require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
    has_many :employees
end

class Employee < ActiveRecord::Base
    belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Tim", last_name: "Gha", hourly_rate: 58)
@store1.employees.create(first_name: "Spidy", last_name: "Tom", hourly_rate: 55)
@store1.employees.create(first_name: "Venus", last_name: "Thy", hourly_rate: 24)
@store1.employees.create(first_name: "Valerie", last_name: "Nyg", hourly_rate: 30)

@store2.employees.create(first_name: "Kobe", last_name: "Bryant", hourly_rate: 40)
@store2.employees.create(first_name: "Lebron", last_name: "James", hourly_rate: 45)
@store2.employees.create(first_name: "John", last_name: "Wick", hourly_rate: 62)
@store2.employees.create(first_name: "Peter", last_name: "Clark", hourly_rate: 56)
@store2.employees.create(first_name: "Bruce", last_name: "Wayne", hourly_rate: 53)

p Employee.all()
