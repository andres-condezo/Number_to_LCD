require_relative './src/app'
require_relative './src/helpers/console'
require_relative './src/models/menus'

def main
  app = App.new
  main_menu = MainMenu.new

  main_menu.print_menu
  loop do
    method = main_menu.receive_valid_input
    break if method == 'exit'

    app.run(method)
  end
  Console.print_div
  puts "Thank you for using this app!\n "
end

main
