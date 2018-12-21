  #1. loop through str and search for numbers
  #2. loop through numbers
  #3. next if numbers length is less than 2
  #4. create evens count
  #5. add 1 to evens count if number is divisible by 2
  #6. return true if evens count is greater than or equal to 2
  #7. return false

def EvenPairs(str)
  str.scan(/d+/).each do |current|
    current.length.times do |i|
      first, second = current[0...i].to_i, current[i..-1].to_i
      return true if first.even? && second.even? && ![first, second].include?(0)
    end
  end
  false
end
p EvenPairs("7r5gg812")
