require_relative './models/menus'
require_relative './models/numbers'

class App
  attr_reader :numbers

  def initialize
    @main_menu = MainMenu.new
    @convertion_menu = ConvertionMenu.new
    @number_model = [
      { value: '0', model: Zero },
      { value: '1', model: One },
      { value: '2', model: Two },
      { value: '3', model: Three },
      { value: '4', model: Four },
      { value: '5', model: Five },
      { value: '6', model: Six },
      { value: '7', model: Seven },
      { value: '8', model: Eight },
      { value: '9', model: Nine }
    ]
    @base_number = []
  end

  def print_lcd
    top = ''
    mid = ''
    bot = ''
    @base_number.each do |el|
      base_object = @number_model[el.to_i][:model]
      instance = base_object.new
      top += instance.top_row
      mid += instance.mid_row
      bot += instance.bot_row
    end
    Console.print_header
    puts top
    puts mid
    puts bot
    print "\n Press enter to continue..."
    gets
    @main_menu.print_menu
  end

  def convert_to_lcd
    @base_number = []
    @convertion_menu.print_menu
    user_input = @convertion_menu.receive_valid_input
    @base_number = user_input.chars
    print_lcd
  end

  def run(method)
    @main_menu.print_menu
    send(method)
  end
end
