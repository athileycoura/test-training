require_relative '../queue/queue'
require 'test/unit'

class TestQueue < Test::Unit::TestCase
  def test_should_return_two_when_adding_two_in_the_first_position_in_the_queue
    # given
    number = 2
    queue = Queue.new
    # when
    queue.enqueue(number)
    actual_result = queue.peek
    #then
    expected_result = number

    assert_equal(expected_result, actual_result)
  end

  def test_should_return_two_when_adding_two_in_the_last_position_in_the_queue
    #given
    number = 10
    second_number = 3
    third_number = 2

    queue = Queue.new
    queue.enqueue(number)
    queue.enqueue(second_number)
    queue.enqueue(third_number)
    #when
    queue.dequeue
    queue.dequeue
    actual_result = queue.dequeue
    is_empty = queue.empty?
    #then
    expected_result = third_number

    assert_equal(expected_result, actual_result)
    assert_equal(is_empty, true)
  end

  def test_should_return_nil_when_queue_is_empty
    #given
    queue = Queue.new
    #when
    actual_result = queue.dequeue
    #then
    expected_result = nil

    assert_equal(expected_result, actual_result)
  end
end

