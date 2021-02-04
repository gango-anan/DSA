# method finds the first duplicate in a ruby array

require 'rspec'

def first_repeated_element(arr)
  return nil if arr.empty?

  counter_hash = Hash.new(0)
  
  arr.each do |elem|
    counter_hash[elem] = counter_hash[elem] += 1
    return elem if counter_hash[elem] > 1

  end

  nil
end

describe 'first_repeated_element' do
  it 'returns the first repeated element from an array' do 
    arr_one = [5, 3, 4, 5, 3, 1]
    expect(first_repeated_element(arr_one)).to eql(5)
  end

  it 'return nil for an empty array' do
    arr = []
    expect(first_repeated_element(arr)).to eql(nil)
  end

  it 'returns nil if no duplicates are found' do
    arr = [1, 2, 3]
    expect(first_repeated_element(arr)).to eql(nil)
  end
end