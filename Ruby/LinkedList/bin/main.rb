require_relative '../lib/node'
require_relative '../lib/linked_list'

node_1 = Node.new('gango')
node_2 = Node.new('anan')

node_1.next_node = node_2
node_3 = Node.new('max')
node_2.next_node = node_3

node_4 = Node.new('ananiya')
node_3.next_node = node_4

node_5 = Node.new('pioneer')
node_4.next_node = node_5

node_6 = Node.new('swaria')
node_5.next_node = node_6

node_7 = Node.new('moruapesur')
node_6.next_node = node_7

node_8 = Node.new('hilders')
node_7.next_node = node_8

node_9 = Node.new('madera')
node_8.next_node = node_9

list = LinkedList.new(node_1)
p list.find_length
p list.index_of('Gambino')
p list.read(7)
