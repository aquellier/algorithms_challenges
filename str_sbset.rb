require 'byebug'
def ArrayAddition(arr)

  # code goes here
  max = arr.max
  arr.delete(max)
  (1..arr.length).each do |i|
    # return true if arr[0..i].sum == max
    arr[0..i].sum
    byebug
  end
  false
end


p ArrayAddition([3,5,-1,8,12])
