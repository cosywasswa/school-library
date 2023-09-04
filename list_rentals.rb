require './book'
require './person'
require './rental'
require './student'
require './teacher'
require './classroom'
require './app'

# def list_all_rentals
#   print 'ID of person: '
#   id = gets.chomp.to_i
#   puts 'Rentals: '
#   @rentals.each do |rental|
#     puts "Date: #{rental.date}, Book: \"#{rental.book.title}\" by #{rental.book.author}" if rental.person.id == id
#   end
#   list_options
# end
