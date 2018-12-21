def overlapping_range(arr)
  overlapping = 0
  (arr[0]..arr[1]).each { |i| overlapping += 1 if i >= arr[2] && i <= arr[3] }
  overlapping >= arr[4]
end

p overlapping_range([4, 10, 2, 6, 4])
