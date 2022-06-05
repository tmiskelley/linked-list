# frozen_string_literal: true

# Models a singly linked list data structure
class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end
  
  # adds nodes to the end of the list
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

  # adds nodes at the beginning of the list
  def prepend(value)
    new_node = Node.new(value)
    previous_head = @head
    return @head = new_node if @head.nil?

    @tail = previous_head if @tail.nil?
    @head = new_node
    @head.next_node = previous_head
  end

  # returns the total number of nodes in the list
  def size
    node_count = 1
    current_node = @head
    until current_node == @tail
      node_count += 1
      current_node = current_node.next_node
    end
    puts node_count
  end

  # returns node data at given index
  def at(index)
    current_node = @head
    return current_node.data if index == 0

    while index >= 1 do
      current_node = current_node.next_node
      return nil if current_node == nil

      index -= 1
    end
    current_node.data
  end

  # removes the last node in the list
  def pop
    current_node = @head
    until current_node.next_node == @tail
      current_node = current_node.next_node
    end
    current_node.next_node = nil
    @tail = current_node
  end

  # searches the list for given value
  def contains?(value)
    current_node = @head
    until current_node.nil?
      return true if current_node.data == value

      current_node = current_node.next_node
    end
    false
  end

  # returns the index of value from the list, or nil if value not found
  def find(value)
    current_node = @head
    index = 0
    until current_node.nil?
      return index if current_node.data == value

      index += 1
      current_node = current_node.next_node
    end
    current_node
  end

  # prints string representation of given list
  def to_s
    current_node = @head
    until current_node.nil?
      print "( #{current_node.data} ) -> "
      current_node = current_node.next_node
    end
    print "nil\n"
  end
end

# Models node objects for linked list
class Node
  attr_accessor :next_node
  attr_reader :data

  def initialize(data)
    @data = data
    @next_node = nil
  end
end
