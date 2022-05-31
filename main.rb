# frozen_string_literal: true

# Models a singly linked list data structure
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

  def prepend(value)
    new_node = Node.new(value)
    previous_head = @head
    return @head = new_node if @head.nil?

    @head = new_node
    @head.next_node = previous_head
    @tail = previous_head
  end

  def size
    puts Node.count
  end
end

# Models node objects for linked list
class Node
  @@count = 0
  attr_accessor :next_node

  def initialize(data)
    @data = data
    @next_node = nil
    @@count += 1
  end

  def self.count
    @@count
  end
end
