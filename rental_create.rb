require './book'
require './person'
require './rental'
require './student'
require './teacher'
require './classroom'
require './app'

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
    list_options
  end
end
