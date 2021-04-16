require_relative '../calculator/calculator'
require 'test/unit'

class TestCalculator < Test::Unit::TestCase
  # testing sum
  def test_should_return_negative_two_when_adding_negative_one_and_negative_one
    #given
    first_number = -1
    second_number = -1
    calculator = Calculator.new
    #when
    actual_result = calculator.sum(first_number, second_number)
    #then
    expected_result = -2
    assert_equal(expected_result, actual_result)
  end

  def test_should_return_zero_when_adding_negative_two_with_positive_two
    #given
    first_number = -2
    second_number = 2
    calculator = Calculator.new
    #when
    actual_result = calculator.sum(first_number, second_number)
    #then
    expected_result = 0
    assert_equal(expected_result, actual_result)
  end

  def test_should_return_ten_when_adding_positive_five_and_positive_five
    #given
    first_number = 5
    second_number = 5
    calculator = Calculator.new
    #when
    actual_result = calculator.sum(first_number, second_number)
    #then
    expected_result = 10
    assert_equal(expected_result, actual_result)
  end

  def test_should_return_negative_ten_when_adding_negative_twenty_and_positive_ten
    #given
    first_number = -20
    second_number = 10
    calculator = Calculator.new

    #when
    actual_result = calculator.sum(first_number, second_number)
    #then
    expected_result = -10
    assert_equal(expected_result, actual_result)
  end

  def test_should_return_five_when_adding_positive_two_and_positive_three_and_vice_versa
    #given
    first_number = 2
    second_number = 3
    calculator = Calculator.new

    #when
    first_result = calculator.sum(first_number, second_number)
    second_result = calculator.sum(second_number, first_number)

    #then
    assert_equal(first_result, second_result)
  end

  #testing substraction

  def test_should_return_zero_when_substracting_negative_two_and_negative_two
    #given
    first_number = -2
    second_number = -2
    calculator = Calculator.new
    #when
    actual_result = calculator.substract(first_number, second_number)
    expected_result = 0
    #then
    assert_equal(expected_result, actual_result)
  end
end

#quando dois numeros são negativos
#quando dois numeros são positivos e o primeiro é maior que o segundo
#quando dois numeros são positivos e o primeiro é maior que o segundo
#quando o primeiro número é zero
#quando o segundo número é zero
#