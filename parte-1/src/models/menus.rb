class MainMenu
  def initialize
    @main_menu_options = [
      { message: 'Convert number to LCD', value: '1', method: 'convert_to_lcd' },
      { message: 'Exit', value: '2', method: 'exit' }
    ]
  end

  def print_menu
    Console.print_header
    puts "> Please select an option:\n "
    @main_menu_options.each do |option|
      puts "#{option[:value]} : #{option[:message]}"
    end
    Console.new_line
    Console.print_div
    print 'Option number: '
  end

  def receive_valid_input
    user_input = gets.chomp.strip
    loop do
      break if valid_input?(user_input, @main_menu_options)

      print_menu
      puts "\"#{user_input}\" was invalid.\n "
      puts '> Please enter a valid number:'
      print 'Option number: '
      user_input = gets.chomp.strip
    end
    index = user_input.to_i - 1
    @main_menu_options[index][:method]
  end

  private

  def valid_input?(user_input, menu_options)
    valid_options = menu_options.map { |option| option[:value] }
    valid_options.include?(user_input)
  end
end

class ConvertionMenu
  def initialize
    @convertion_menu_title = "> Please enter a number to convert:\n "
  end

  def print_menu
    Console.print_header
    puts @convertion_menu_title
  end

  def receive_valid_input
    user_input = gets.chomp.strip
    loop do
      break if valid_input?(user_input) && user_input != ''

      print_menu
      puts "\"#{user_input}\" was invalid.\n "
      puts '> Please enter a valid integer:'
      user_input = gets.chomp.strip
    end
    user_input
  end

  private

  def valid_input?(user_input)
    !user_input.match?(/\D/)
  end
end
