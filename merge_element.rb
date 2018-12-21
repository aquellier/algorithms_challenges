require 'byebug'

def merge_element(arr)
  until arr.length == 1
    arr = arr[0...-1].map.with_index { |number, i| (arr[i] - arr[i+1]).abs }
  end
  arr[0]
end

p merge_element([3, 3, 7, 9])
