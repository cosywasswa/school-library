require './app'
require './menu'

class Main
  def main
    puts 'Welcome to School Library App!'
    app = App.new
    menu = Menu.new
    menu.find_options(app)
  end
end

main = Main.new
main.main
