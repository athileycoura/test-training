require_relative '../queue/queue'
require 'test/unit'

class TestQueue < Test::Unit::TestCase

  def test_should_return_two_when_adding_two_in_the_first_place_in_the_queue
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
end

# checar se a primeira pessoa que entrou na fila, tá sendo a primeira pessoa que tá saindo.
# checar se a ultima pessoa que entrou na fila, é a ultima pessoa que tá saindo.
# checar se a fila tá vazia e retornar nulo.
