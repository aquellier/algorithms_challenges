require 'byebug'

def solution(array)
  minimum = ((array[0] + array[1]) - (array[2...array.length].reduce(:+))).abs
  index_for_minimum = 1
  (3...array.length).each do |index|
    array_left = array[0...index]
    array_right = array[index...array.length]
    substraction = (array_left.reduce(:+) - array_right.reduce(:+)).abs
    minimum = substraction if substraction < minimum
  end
  minimum
end

array = [1, -4, 6, 7, 17, 2, 8, -12, 4]

p solution(array)
