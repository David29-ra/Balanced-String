# Module for ask inputs on terminal

module Requester
  def select_action
    gets_option(%w[test exit])
  end

  def receive_string
    puts "\nEscriba el mensaje que desee probar"
    print "> "
    gets.chomp.strip
  end

  def gets_option(options)
    puts "\nElige una opción"
    puts options.join(" | ")
    print "> "

    input = gets.chomp.strip.downcase

    until options.include?(input)
      puts "Invalid option"
      print "> "
      input = gets.chomp.strip.downcase
    end

    input
  end
end
