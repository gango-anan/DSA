# Method that Calculates the Nth Fibonacci Number from a Sequence

# frozen_string_literal: true

def nth_fibonacci(num)
  (1..num).inject([0, 1]) { |fib| fib << fib.last(2).inject(:+) }.last
end

# Test
describe 'Nth Fibonnaci Number' do
  it 'Calculates the fibonacci value' do
    expect(nth_fibonacci(10)).to eql(89)
  end
end
