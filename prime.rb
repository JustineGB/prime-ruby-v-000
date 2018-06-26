

def prime? (number)
  #if the number is less then 2 (1, 0, and negatives) then it is false
   if number < 2
    return false
#1 is neither prime nor composite
#start from number 2 bc 2 is first prime number
#you want a T/F result so set up w/ enumerable (or you would have to turn your string into an array with "".split
#.none?   This method returns returns TRUE when the block NEVER RETURNS TRUE for ALL ELEMENTS.
#...if the block has a 0 remainder (it IS divisible by 2) it is NOT prime and it will return FALSE for each pass and THUS the method will return True
  else (2..number/2).none? { |i| number % i == 0 }
end
end


require 'benchmark'
require 'bigdecimal/math'

# calculate pi to 10k digits
puts Benchmark.measure {BigMath.PI(10_000)}

require 'benchmark'

iterations = 100_000
Benchmark.bm(27) do |bm|
  bm.report('joining an array of strings') do
    iterations.times do
      ["The", "current", "time", "is", Time.now].join(" ")
    end
  end

  bm.report('string interpolation') do
    iterations.times do
      "The current time is #{Time.now}"
    end
  end
end
