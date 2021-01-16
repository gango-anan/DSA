# This is a Fibonacci Sequence Generator

# frozen_string_literal: true

require 'rspec'
def fibonacci(num)
  (1..num).inject([0, 1]) { |fib| fib << fib.last(2).inject(:+) }
end

p fibonacci(10)
# Test
describe 'Fibbonacci' do
  it 'Calculates the fibonacci value' do
    expect(fibonacci(10)).to eql([0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89])
  end
end
