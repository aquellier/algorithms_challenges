require 'byebug'
def KaprekarsConstant(num)

  # code goes here
  return 0 if num == 6174
  times = 0
  until num == 6174
    ordered = sorting(num).to_i
    reversed = reverse(num).to_i
    num = reversed - ordered
    times += 1
  end
  times
end

def sorting(num)
  array = num.to_s.chars.map { |n| n.to_i }
  array << 0 until array.length == 4
  array.sort.join
end

def reverse(num)
  sorting(num).reverse
end

p KaprekarsConstant(2111)
