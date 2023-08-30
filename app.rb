require './book'
require './person'
require './rental'
require './student'
require './teacher'
require './classroom'
require './rental_create'
require './create_teacher'
require './list_rentals'
require './create_students'

class App
  attr_accessor :rentals, :students, :books, :persons

  def initialize
    @rentals = []
    @students = []
    @books = []
    @persons = []
  end

  def list_options
    puts ' '
    puts 'Please choose an option by entering a number:'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
    find_options
  end

  # rubocop:disable Metrics/CyclomaticComplexity
  def find_options
    options = gets.chop
    case options
    when '1' then list_all_books
    when '2' then list_all_people
    when '3' then create_person
    when '4' then create_book
    when '5' then create_rental
    when '6' then list_all_rentals
    when '7' then stop
    else
      puts 'Invalid selection, select between 1 to 7'
      find_options
    end
  end
  # rubocop:enable Metrics/CyclomaticComplexity

  def list_all_books
    if @books.empty?
      puts 'No books in store'
      puts 'select 4 to create a new book'
      find_options
    else
      @books.each do |book|
        puts "Title: \"#{book.title}\" Author: #{book.author}"
      end
      list_options
    end
  end

  def list_all_people
    if @persons.empty?
      puts 'No People in the correction'
      puts 'select 3 to add a new person'
      find_options
    else
      @persons.each do |person|
        puts "#{[person.class]} Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
      end
      list_options
    end
  end

  def create_book
    print 'Title: '
    title = gets.chop
    print 'Author: '
    author = gets.chop
    @books.push(Book.new(title, author))
    puts 'Book created successfully'
    list_options
  end

  def create_person
    puts 'Do you want to create a Student (1) or a Teacher (2)? [input the number]:'
    choice = gets.chomp
    case choice
    when '1'
      create_student
    when '2'
      create_teacher
    end
  end

  def stop
    puts 'Thank you for using this app!'
    exit
  end
end
