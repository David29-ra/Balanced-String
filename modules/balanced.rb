# Module with the function to check if a string is balanced

module Balanced
  def its_balanced?(string)
    string = string.gsub(/(:\(|:\)|[a-z]| |:|\([a-z]*:[a-z]*\))/, "")
    valid_braces(string) ? "Balanceado" : "Desbalanceado"
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
