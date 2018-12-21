def PrimeTime(num)
  # code goes here
  (2..num-1).each { |divider| return false if num % divider == 0 }
  true
end
