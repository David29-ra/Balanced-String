# Module for puts on terminal

module Presenter
  def say_welcome
    say_hi = ["####################################",
              "#              Welcome             #",
              "#      Paréntesis Balanceados      #",
              "####################################"]
    say_hi.join("\n")
  end

  def say_goodbye
    say_bye = ["\n####################################",
               "#         Gracias por usar         #",
               "#      Paréntesis Balanceados      #",
               "####################################"]
    say_bye.join("\n")
  end
end
