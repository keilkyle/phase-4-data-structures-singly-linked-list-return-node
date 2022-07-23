require 'pry'
require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def nth_from_end(n)

    if head == nil || n < 1
      return nil
    end

    length = 1 
    current_node = head

    while current_node.next_node
      length += 1
      current_node = current_node.next_node
    end

    if n > length
      return nil
    end

    current_node = head
    x = length

    while x > n
      current_node = current_node.next_node
      x -= 1
    end

    current_node.value

  end

end
