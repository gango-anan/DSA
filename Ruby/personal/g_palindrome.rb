# frozen_string_literal: true

require 'rspec'

def palindrome?(word)
  word.downcase == word.downcase.reverse
end

# Test method with rspec
describe 'Check if a word is a palindrome' do
  it 'returns true if the word is a palindrome, false if its not' do
    expect(palindrome?('tacocat')).to be(true)
    expect(palindrome?('Tacocat')).to be(true)
    expect(palindrome?('baseball')).to be(false)
  end
end
