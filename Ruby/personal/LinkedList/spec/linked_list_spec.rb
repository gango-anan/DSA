# frozen_string_literal: true

require_relative '../lib/linked_list'
require_relative '../lib/node'

describe LinkedList do
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

  describe '#read' do
    it 'returns the value at a specified index' do
      expect(list.read(3)).to eql('ananiya')
    end

    context 'when the specified index is out of range' do
      it 'returns nil' do
        expect(list.read(20)).to eql(nil)
      end
    end
  end

  describe '#index_of' do
    it 'returns the index of the specified element in the list' do
      expect(list.index_of('ananiya')).to eql(3)
    end

    it 'returns nil if the specified element is not in the list' do
      expect(list.index_of('aan')).to eql(nil)
    end
  end
end
