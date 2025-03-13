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

  def test_new_lines_are_treated_as_delimiters
    calculator = StringCalculator.new
    assert_equal 6, calculator.add("1\n2,3")
    assert_equal 12, calculator.add("2\n3\n7")
  end

  def test_custom_delimiter_is_supported
    calculator = StringCalculator.new
    assert_equal 4, calculator.add("//;\n2;2")
    assert_equal 10, calculator.add("//-\n1-2-3-4")
  end

  def test_negative_numbers_raise_an_exception
    calculator = StringCalculator.new
    error = assert_raises(RuntimeError) { calculator.add("1,-2,3") }
    assert_equal "negative numbers are not allowed: -2", error.message

    error = assert_raises(RuntimeError) { calculator.add("-1,-2,-3") }
    assert_equal "negative numbers are not allowed: -1, -2, -3", error.message
  end
end