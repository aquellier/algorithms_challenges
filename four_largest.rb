def LargestFour(arr)

  # code goes here
  return arr.sum if arr.length <= 4
  results = []
  arr.each do |number|
    break if results.length == 4
    results << arr.sort.reverse.shift
    arr.shift
  end
  results.sum
end

p LargestFour([1, 7, 2])
