require 'active_record'
require_relative 'connection'

# models
require_relative '../models/instructor'
require_relative '../models/student'

jesse = Instructor.create(first_name: "Jesse", last_name: "Shawl", age: 99)
adrian = Instructor.create(first_name: "Adrian", last_name: "Maseda", age: 100)
nick = Instructor.create(first_name: "Nick", last_name: "Olds", age: 101)

jesse.students.create(first_name: "Paul", last_name: "Paulson")
adrian.students.create(first_name: "Bob", last_name: "Bobson")
nick.students.create(first_name: "Dwayne", last_name: "The Rock Johnson")
