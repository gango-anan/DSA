# Method that finds the longest word in an array

# frozen_String_literal: true

class Array
  def largest_word
    flat_map(&:split).max_by(&:length)
  end
end

# Test
describe 'Longest Word' do
  it 'returns the longest word in an array' do
    arr = ['A sequence', 'broken into several', 'array elements']
    expect(arr.largest_word).to eql('sequence')
  end
end
