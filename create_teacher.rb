require './book'
require './person'
require './rental'
require './student'
require './teacher'
require './classroom'
require './menu'
require './app'

class TeacherOperations
  def initialize(persons)
    @persons = persons
  end

  def create_teacher(app, _persons)
    menu = Menu.new
    print 'Age: '
    age = gets.chomp
    print ' Name: '
    name = gets.chomp
    print ' Specialization: '
    specialization = gets.chomp
    @persons.push(Teacher.new(age, specialization, name))
    puts 'Person created successfully'
    menu.find_options(app)
  end
end
