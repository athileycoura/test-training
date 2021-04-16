class Queue
  def initialize
    @queue = []
  end

  def enqueue(number)
    @queue << number
  end

  def peek
    @queue.first
  end
end
