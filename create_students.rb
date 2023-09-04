require './book'
require './person'
require './rental'
require './student'
require './teacher'
require './classroom'
require './menu'

class StudentOperations
  def initialize(persons)
    @persons = persons
  end

  def create_student(app, _persons)
    menu = Menu.new
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
    menu.find_options(app)
  end
end
