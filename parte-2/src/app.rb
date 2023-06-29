require_relative './models/menus'
require_relative './models/numbers'

class App
  def initialize
    @main_menu = MainMenu.new
    @convertion_menu = ConvertionMenu.new
    @number_models = [Zero, One, Two, Three, Four, Five, Six, Seven, Eight, Nine]
    @base_number = []
    @width = 1
    @height = 1
    @tmp_buffer = ''
  end

  def create_row(row)
    @base_number.each do |el|
      num_instance = @number_models[el.to_i].new
      # Left column
      @tmp_buffer += num_instance.send(row)[0]
      # Mid column
      a = 0
      while a < @width
        @tmp_buffer += num_instance.send(row)[1]
        a += 1
      end
      # Right column
      @tmp_buffer += num_instance.send(row)[2]
    end
    @tmp_buffer += "\n"
  end

  def create_upr_row(row)
    a = 1
    while a < @height
      create_row(row)
      a += 1
    end
  end

  def create_temp_buffer
    @tmp_buffer = ''
    create_row('top_row')
    create_upr_row('upr_mid')
    create_row('mid_row')
    create_upr_row('upr_bot')
    create_row('bot_row')
  end

  def print_lcd
    Console.print_header
    create_temp_buffer
    puts "Number: #{@base_number.join} | Height: #{@height} | Width: #{@width}\n "
    puts @tmp_buffer
    print "\n Press enter to continue..."
    gets
    @main_menu.print_menu
  end

  def convert_to_lcd
    @base_number = []
    user_input = @convertion_menu.run
    @base_number, @height, @width = user_input
    print_lcd
  end

  def run(method)
    send(method)
  end
end
