def cyclic_roration(array, times)
  rotated_array = array.dup
  (0...array.length).each do |index|
    rotated_array[(index + times) % array.length] = array[index]
  end
  rotated_array
end

def cyclic(array, times)
  rotated_array = array.dup
  (0...array.length).each do |index|
    if index + times < array.length
      rotated_array[(index + times)] = array[index]
    else
      rotated_array[(index + times) - array.length] = array[index]
    end
  end
  rotated_array
end

p cyclic_roration([3, 4, 8, 2, 1, 5, 8, 12], 3)
p cyclic([3, 4, 8, 2, 1, 5, 8, 12], 3)
