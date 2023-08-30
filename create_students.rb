require './book'
require './person'
require './rental'
require './student'
require './teacher'
require './classroom'

def create_student
  print 'Age: '
  age = gets.chomp
  print 'Name: '
  name = gets.chomp
  print 'Has parent permission? [Y/N] '
  parent_permission = gets.chomp.downcase
  if parent_permission == 'y'
    @persons.push(Student.new(true, age, name))
  else
    @persons.push(Student.new(false, age, name))
  end
  puts 'Person created successfully'
  list_options
end
