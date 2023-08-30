#!/usr/bin/env ruby
require './app'

class Main
  def main
    puts 'Welcome to School Library App!'
    app = App.new
    app.list_options
  end
end

main = Main.new
main.main
