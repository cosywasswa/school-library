require './book'
require './person'
require './rental'
require './student'
require './teacher'
require './classroom'
require './create_teacher'
require './create_students'
require './menu'

class App
  attr_accessor :rentals, :students, :books, :persons

  def initialize
    @rentals = []
    @students = []
    @books = []
    @persons = []
    @menu = Menu.new
  end

  def list_all_books
    if @books.empty?
      puts 'No books in store'
      puts 'select 4 to create a new book'
      @menu.find_options(self)
    else
      @books.each do |book|
        puts "Title: \"#{book.title}\" Author: #{book.author}"
      end
      @menu.find_options(self)
    end
  end

  def list_all_people
    if @persons.empty?
      puts 'No People in the correction'
      puts 'select 3 to add a new person'
      @menu.find_options(self)
    else
      @persons.each do |person|
        puts "#{[person.class]} Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
      end
      @menu.find_options(self)
    end
  end

  def create_book
    print 'Title: '
    title = gets.chop
    print 'Author: '
    author = gets.chop
    @books.push(Book.new(title, author))
    puts 'Book created successfully'
    @menu.find_options(self)
  end

  def create_person
    puts 'Do you want to create a Student (1) or a Teacher (2)? [input the number]:'
    choice = gets.chomp
    case choice
    when '1'
      student = StudentOperations.new(@persons)
      student.create_student(self, @persons)
    when '2'
      teacher = TeacherOperations.new(@persons)
      teacher.create_teacher(self, @persons)
    end
  end

  def create_rental
    puts 'Select a book from the following list by number'
    @books.each_with_index do |book, book_index|
      puts "#{book_index}) Title: #{book.title}, Author: #{book.author}"
      chosen_book_index = gets.chomp.to_i
      puts 'Select a person from the following list by number'
      @persons.each_with_index do |person, person_index|
        puts "#{person_index}) Name: \"#{person.name}\", ID: #{person.id}, Age: #{person.age}"
      end
      chosen_person_index = gets.chomp.to_i

      print 'Date (yyyy/mm/dd) '
      date = gets.chomp

      @rentals.push(Rental.new(date, @books[chosen_book_index], @persons[chosen_person_index]))
      puts 'Rental created successfully'
      @menu.find_options(self)
    end
  end

  def list_all_rentals
    print 'ID of person: '
    id = gets.chomp.to_i
    puts 'Rentals: '
    @rentals.each do |rental|
      puts "Date: #{rental.date}, Book: \"#{rental.book.title}\" by #{rental.book.author}" if rental.person.id == id
    end
    @menu.find_options(self)
  end
end
