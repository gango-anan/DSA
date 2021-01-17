require_relative '../lib/node'
require_relative '../lib/linked_list'

node_1 = Node.new('gango')
node_2 = Node.new('anan')
node_1.next_node = node_2
node_3 = Node.new('max')
node_2.next_node = node_3
node_4 = Node.new('ananiya')
node_3.next_node = node_4

list = LinkedList.new(node_1)
p list.read(3)
list.insert_at_index(3,'Galiwango')
p list.read(3)