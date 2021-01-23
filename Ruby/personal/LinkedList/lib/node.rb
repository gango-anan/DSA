# frozen_string_literal: true

# Node class that creates the nodes in a linkedlist
class Node
  attr_accessor :data, :next_node

  def initialize(data)
    @data = data
  end
end
