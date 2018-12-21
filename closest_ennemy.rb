def closest_enemy(arr)
  # code goes here
  return 0 unless arr.include?(1) && arr.include?(2)
  target, space = arr.index(1), 1
  (1..arr.length).each do |i|
    break if arr[target+i] == 2 || (arr[target-i] == 2 && target - i > 0)
    space += 1
  end
  space
end
