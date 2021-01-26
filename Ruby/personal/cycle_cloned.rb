# frozen_string_literal: true

require 'rspec'

def cloned_cycle(collection, num)
  final_items = []
  num.times do
    collection.each { |item| final_items << item }
  end
  final_items
end

describe 'cloned_cycle' do
  it 'Iterates through an array a variable number of times and returns the full set of elements' do
    arr = (1..5)
    expect(cloned_cycle(arr, 3)).to eq([1, 2, 3, 4, 5, 1, 2, 3, 4, 5, 1, 2, 3, 4, 5])
  end
end
