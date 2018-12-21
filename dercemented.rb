require 'byebug'
def OneDecremented(numbers)
  array = numbers.to_s.split('')
  count = 0
  (0...array.length - 1).each do |i|
    count += 1 if array[i].to_i - array[i + 1].to_i == 1
  end
  count
end

p OneDecremented(9876543211111)
