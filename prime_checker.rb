# Have the function PrimeChecker(num) take num and return 1 if any# arrangement of num comes out to be a prime number, otherwise return 0.# For example: if num is 910, the output should be 1 because 910 can be# arranged into 109 or 019, both of which are primes.# Sample Test Cases# Input:98# Output:1# Input:598# Output:1# def primechecker(num)#   # Split the number#   # Check all combinations possible#   num#   # Return one if one of them is a prime# end# p primechecker(356)# def PrimeTime(num)#   # code goes here#   (2..num-1).each { |divider| return false if num % divider == 0 }#   true# end# print "hello world"def LargestFour(arr)  byebug  # code goes here  return arr.sum if arr.length <= 4  results = []  arr.each do |number|    break if results.length == 4    results << arr.sort.reverse.shift    arr.shift  end  results.sumendp LargestFour([1, 7, 2])