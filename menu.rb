require './stop_app'

class Menu
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
  end

  # rubocop:disable Metrics/CyclomaticComplexity
  def find_options(app)
    list_options
    options = gets.chop
    case options
    when '1' then app.list_all_books
    when '2' then app.list_all_people
    when '3' then app.create_person
    when '4' then app.create_book
    when '5' then app.create_rental
    when '6' then app.list_all_rentals
    when '7'
      stop = StopApp.new
      stop.stop
    else
      puts 'Invalid selection, select between 1 to 7'
      find_options(app)
    end
  end
  # rubocop:enable Metrics/CyclomaticComplexity
end
