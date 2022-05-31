# frozen_string_literal: true

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end
  
  def append(value)
    new_node = Node.new(value)
    return @head = new_node if @head.nil?

    if @tail.nil?
      @head.next_node = new_node
      @tail = new_node
    else
      @tail.next_node = new_node
      @tail = new_node
    end
  end
end

class Node

  attr_accessor :next_node

  def initialize(data)
    @data = data
    @next_node = nil
  end
end
