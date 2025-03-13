require "minitest/autorun"
require_relative "string_calculator"

class StringCalculatorTest < Minitest::Test
  def test_empty_string
    calculator = StringCalculator.new
    assert_equal 0, calculator.add("")
  end
end