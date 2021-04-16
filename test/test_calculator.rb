require_relative '../calculator/calculator'
require 'test/unit'

class TestCalculator < Test::Unit::TestCase
  def test_should_return_negative_two_when_adding_negative_one_and_negative_one
    #given
    first_number = -1
    second_number = -1
    calculator = Calculator.new
    #then
    actual_result = calculator.sum(first_number, second_number)
    #when
    expected_result = -2
    assert_equal(expected_result, actual_result)
  end
end

# deve retornar um número negativo quando somando dois números negativos
# deve retornar zero quando somado um número de mesmo valor sendo um negativo e outro positivo
# deve retornar positivo quando somado dois numeros positivos
# deve retornar uma exceção com mensagem de erro quando um dos valores não é um inteiro
# deve retornar o sinal do maior numero quando somado um negativo com um positivo