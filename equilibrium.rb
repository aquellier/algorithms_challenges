example = []
50000.times { example << rand(-1000..1000) }

def solution(array)
  start = Time.now

  left_sum = array[0]
  right_sum = array[1...array.length].sum
  minimum = ((array[0] + array[1]) - (array[2...array.length].sum)).abs

  (2...array.length).each do |index|
    left_sum = array[0...index].sum
    right_sum = array[index...array.length].sum
    difference = (left_sum - right_sum).abs
    minimum = difference if difference < minimum
  end

  finish = Time.now
  p "This computation took #{finish - start} seconds"
  minimum
end

p solution(example)

def improved_solution(array)
  start = Time.now

  left_sum = array[0]
  right_sum = array[1...array.length].sum
  minimum = (left_sum - right_sum).abs

  (2...array.length).each do |index|
    left_sum = left_sum + array[index - 1]
    right_sum = right_sum - array[index - 1]
    difference = (left_sum - right_sum).abs
    minimum = difference if difference < minimum
    index_for_minimum = index if difference < minimum
  end

  finish = Time.now
  p "This computation took #{finish - start} seconds"
  minimum
end


p improved_solution(example)
