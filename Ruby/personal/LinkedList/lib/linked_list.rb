# frozen_string_literal: true

# LinkedList class
class LinkedList
  attr_accessor :first_node

  def initialize(first_node)
    @first_node = first_node
  end

  # Reading from LinkedList
  def read(index)
    current_node = first_node
    current_index = 0

    while current_index < index
      current_node = current_node.next_node
      current_index += 1
      return nil unless current_node

    end
    current_node.data
  end

  # Searching from LinkedList
  def index_of(value)
    current_node = first_node
    current_index = 0
    while current_node
      return current_index if current_node.data == value

      current_node = current_node.next_node
      current_index += 1
    end
    nil
  end

  # Insert a value at a particular point in the LinkedList
  def insert_at_index(index, value)
    new_node = Node.new(value)
    if index.zero?
      new_node.next_node = first_node
      self.first_node = new_node
    else
      current_node = first_node
      current_index = 0
      while current_index < (index - 1)
        current_node = current_node.next_node
        current_index += 1
      end
      new_node.next_node = current_node.next_node
      current_node.next_node = new_node
    end
  end

  # Delete element from the LinkedList
  def delete_at_index(index)
    if index.zero?
      self.first_node = first_node.next_node
    else
      current_node = first_node
      current_index = 0
      while current_index < (index - 1)
        current_node = current_node.next_node
        current_index += 1
      end
      node_after_deleted_node = current_node.next_node.next_node
      current_node.next_node = node_after_deleted_node
    end
  end

  # length of list
  def find_length
    current_node = first_node
    count = 0
    while current_node
      count += 1
      current_node = current_node.next_node
    end
    count
  end
end
