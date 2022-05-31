# frozen_string_literal: true

class LinkedList; end

class Node

  attr_accessor :next_node

  def initialize(data)
    @data = data
    @next_node = nil
  end
end
