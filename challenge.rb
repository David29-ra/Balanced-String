# Class Challenge
require_relative "./modules/presenter"
require_relative "./modules/requester"
require_relative "./modules/balanced"

class Challenge
  include Presenter
  include Requester
  include Balanced

  def initialize; end

  def start
    puts say_welcome
    action = ""
    until action == "exit"
      action = select_action
      case action
      when "test" then balanced_or_not
      end
    end
    puts say_goodbye
  end

  def balanced_or_not
    puts "here"
  end
end
