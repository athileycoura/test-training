class Queue
  def initialize
    @queue = []
  end

  def enqueue(number)
    @queue << number
  end

  def dequeue
    @queue.shift
  end

  def peek
    @queue.first
  end

  def empty?
    @queue.empty?
  end
end
