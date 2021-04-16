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
end
