class Stack
  def initialize
    @stack = []
  end

  def push(number)
    @stack << number
  end

  def peek
    @stack.last
  end
end
