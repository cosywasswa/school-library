require './book'
require './person'
require './rental'
require './student'
require './teacher'
require './classroom'

def create_teacher
  print 'Age: '
  age = gets.chomp
  print ' Name: '
  name = gets.chomp
  print ' Specialization: '
  specialization = gets.chomp
  @persons.push(Teacher.new(age, specialization, name))
  puts 'Person created successfully'
  list_options
end
