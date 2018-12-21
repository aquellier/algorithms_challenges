def food_distribution(arr)

  # code goes here
  pairs = arr.combination(2).to_a
  sandwiches = arr.shift
  diff_max = arr.max - arr.min
  pairs.each do |i|

  end

end

p food_distribution([5, 2, 1, 4, 3])
