require_relative '../calculator/calculator'
require 'test/unit'

class TestCalculator < Test::Unit::TestCase
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
end

# deve retornar positivo quando somado dois numeros positivos
# deve retornar uma exceção com mensagem de erro quando um dos valores não é um inteiro
# deve retornar o sinal do maior numero quando somado um negativo com um positivo
# a ordem dos fatores nao altera o produto
