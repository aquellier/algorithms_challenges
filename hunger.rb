def FoodDistribution(arr)
  target = arr.shift
  # code goes here
  arr.combination(2).to_a

end

p FoodDistribution([5, 3, 4, 3, 1])
