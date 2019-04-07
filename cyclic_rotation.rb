example = [1, 6, 4, 3, 8, 3]

def cyclic_with_modulo(array, times)
  rotated_array = Array.new(array.length)
  (0...array.length).each do |index|
    rotated_array[(index + times) % array.length] = array[index]
  end
  rotated_array
end

def cyclic_with_if(array, times)
  rotated_array = Array.new(array.length)
  (0...array.length).each do |index|
    if index + times < array.length
      rotated_array[(index + times)] = array[index]
    else
      rotated_array[(index + times) - array.length] = array[index]
    end
  end
  rotated_array
end

p cyclic_with_modulo(example, 14)
p cyclic_with_if(example, 14)
