require 'byebug'

def solution(array)
  left_sum = array[0]
  right_sum = array[1...array.length].reduce(:+)
  minimum = (left_sum - right_sum).abs
  index_for_minimum = 1
  (2...array.length).each do |index|
    left_sum = left_sum + array[index - 1]
    right_sum = right_sum - array[index - 1]
    p substraction = (left_sum - right_sum).abs
    minimum = substraction if substraction < minimum
    index_for_minimum = index if substraction < minimum
  end
  minimum
end

array = [1, -4, 6, 7, 17, 2, 8, -12, 4]
