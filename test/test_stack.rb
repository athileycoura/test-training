require_relative '../stack/stack'
require 'test/unit'

class TestStack < Test::Unit::TestCase
  def test_should_have_two_on_top_of_stack_when_pushing_two
    # given
    number = 2
    stack = Stack.new
    # when
    stack.push(number)
    actual_result = stack.peek
    # then
    expected_result = number
    assert_equal(expected_result, actual_result)
  end

  def test_should_return_two_as_last_element_when_adding_two_first
    # given
    number = 2
    second_number = 3
    third_number = 10
    stack = Stack.new
    # when
    stack.push(number)
    stack.push(second_number)
    stack.push(third_number)
    # then
    stack.pop
    stack.pop
    actual_result = stack.pop
    is_empty = stack.empty?

    expected_result = number

    assert_equal(expected_result, actual_result)
    assert_equal(is_empty, true)
  end
end
