# Module with the function to check if a string is balanced

module Balanced
  def balanced_or_not_present
    message = receive_string
    print "El mensaje es : "
    puts its_balanced?(message)
  end

  def its_balanced?(message)
    message = message.gsub(/(:\(|:\)|[a-z]| |:|\([a-z]*:[a-z]*\))/, "")
    valid_braces(message) ? "Balanceado" : "Desbalanceado"
  end

  def valid_braces(braces)
    stack = []
    symbols = { "(" => ")" }

    braces.each_char do |brace|
      stack.last && stack.last == symbols.key(brace) ? stack.pop : stack << brace
    end
    stack.empty?
  end
end
