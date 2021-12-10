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

  def test_we_can_exit; end
end
