require "minitest/autorun"
require_relative "string_calculator"

class StringCalculatorTest < Minitest::Test
  def test_empty_string
    calculator = StringCalculator.new
    assert_equal 0, calculator.add("")
  end

  def test_single_number_returns_back_the_number
    calculator = StringCalculator.new
    assert_equal 1, calculator.add("1")
  end

  def test_two_numbers_are_summed
    calculator = StringCalculator.new
    assert_equal 3, calculator.add("1,2")
  end

  def test_multiple_numbers_are_summed
    calculator = StringCalculator.new
    assert_equal 10, calculator.add("1,2,3,4")
    assert_equal 16, calculator.add("1,2,3,4,6")
  end
end