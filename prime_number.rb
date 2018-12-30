def PrimeTime(num)
  # code goes here
  (2..num-1).each { |divider| return false if num % divider == 0 }
  true
end
 p PrimeTime(37)

# Have the function PrimeChecker(num) take num and return 1 if any
# arrangement of num comes out to be a prime number, otherwise return 0.
# For example: if num is 910, the output should be 1 because 910 can be
# arranged into 109 or 019, both of which are primes.
# Sample Test Cases
# Input:98

# Output:1


# Input:598

# Output:1

def primechecker(num)
  # Split the number
  # Check all combinations possible
  arrangements = []
  num.to_s.length.times { arrangements << num }
  arrangements.map.with_index do |number|
  end
  # Return one if one of them is a prime
end

p primechecker(356)
