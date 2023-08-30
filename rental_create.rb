require './book'
require './person'
require './rental'
require './student'
require './teacher'
require './classroom'
require './app'

# rubocop:disable Metrics/MethodLength
# rubocop:disable Metrics/AbcSize
def create_rental
  if @books.empty?
    puts 'No books in store'
    puts 'select 4 to create a new book'
    get_options
  else
    puts 'Select a book from the following list by number'
    @books.each_with_index do |book, index|
      puts "#{index}) Title: #{book.title}, Author: #{book.author}"
    end
    book_index = gets.chomp.to_i

    if @persons.empty?
      puts 'No people in records'
      puts 'select 3 to enter a new person'
      get_options
    else
      puts 'Select a person from the following list by number'
      @persons.each_with_index do |person, index|
        puts "#{index}) Name: \"#{person.name}\", ID: #{person.id}, Age: #{person.age}"
      end
    end
    person_index = gets.chomp.to_i

    print 'Date (yyyy/mm/dd) '
    date = gets.chomp

    @rentals.push(Rental.new(date, @books[book_index], @persons[person_index]))
    puts 'Rental created successfully'
    list_options
  end
end
# rubocop:enable Metrics/AbcSize
# rubocop:enable Metrics/MethodLength
