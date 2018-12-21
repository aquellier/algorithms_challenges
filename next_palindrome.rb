def next_palindrome(number)
  number += 1
  number += 1 until number.to_s.reverse == number.to_s
  number
end

p next_palindrome(1992)
