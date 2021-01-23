# frozen_string_literal: true

require_relative '../lib/node'
require_relative '../lib/linked_list'

node1 = Node.new('gango')
node2 = Node.new('anan')
node1.next_node = node2
node3 = Node.new('max')
node2.next_node = node3
node4 = Node.new('ananiya')
node3.next_node = node4
node5 = Node.new('pioneer')
node4.next_node = node5
node6 = Node.new('swaria')
node5.next_node = node6
node7 = Node.new('moruapesur')
node6.next_node = node7
node8 = Node.new('hilders')
node7.next_node = node8
node9 = Node.new('madera')
node8.next_node = node9
list = LinkedList.new(node1)
# p list.find_length
# p list.index_of('Gambino')
# p list.read(7)
