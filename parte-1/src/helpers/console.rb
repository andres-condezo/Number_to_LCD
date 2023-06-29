class Console
  def self.clear_console
    system('clear')
    system('cls')
  end

  def self.new_line
    puts "\n"
  end

  def self.print_div
    puts '-----------------------------------'
  end

  def self.print_header
    clear_console
    print_div
    puts '  Welcome to "Number to LCD" App!'
    print_div
    puts "\n"
  end
end
