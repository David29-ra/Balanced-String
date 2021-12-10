# Script to test class challenge
require "minitest/autorun"
require_relative "./io_test"
require_relative "../challenge"
require_relative "../modules/balanced"

class ChallengeTest < Minitest::Test
  include IoTestHelpers
  include Balanced

  def setup
    super
    @challenge = Challenge.new
  end

  def test_we_can_exit
    input = ["exit"]

    output, _error = capture_io do
      simulate_stdin(*input) do
        @challenge.start
      end
    end

    expexted = [
      "####################################",
      "#              Welcome             #",
      "#      Paréntesis Balanceados      #",
      "####################################",
      "",
      "Elige una opción",
      "test | exit",
      "> ",
      "####################################",
      "#         Gracias por usar         #",
      "#      Paréntesis Balanceados      #",
      "####################################\n"
    ].join("\n")

    assert_equal expexted, output
  end

  def test_a_example
    message = "hola"
    result = its_balanced?(message)
    expected = "balanceado"

    assert_equal expected, result
  end

  def test_b_example
    message = "(hola)"
    result = its_balanced?(message)
    expected = "balanceado"

    assert_equal expected, result
  end

  def test_c_example
    message = "(()"
    result = its_balanced?(message)
    expected = "desbalanceado"

    assert_equal expected, result
  end

  def test_d_example
    message = "(:)"
    result = its_balanced?(message)
    expected = "balanceado"

    assert_equal expected, result
  end

  def test_e_example
    message = "no voy (:()"
    result = its_balanced?(message)
    expected = "balanceado"

    assert_equal expected, result
  end

  def test_f_example
    message = "hoy pm: fiesta :):)"
    result = its_balanced?(message)
    expected = "balanceado"

    assert_equal expected, result
  end

  def test_g_example
    message = ":(("
    result = its_balanced?(message)
    expected = "desbalanceado"

    assert_equal expected, result
  end

  def test_h_example
    message = "a (b (c (d) c) b) a :)"
    result = its_balanced?(message)
    expected = "balanceado"

    assert_equal expected, result
  end
end
