def ArrayMatching(array)
  result = []
  clean_array = [array[0].delete('[]').split(', '), array[1].delete('[]').split(', ')]
  max_length = [clean_array[0].length, clean_array[1].length].max
  (0..max_length - 1).each { |i| result << clean_array[0][i].to_i + clean_array[1][i].to_i }
  result.join('-')
end

test1 = ["[5, 2, 3, 3, 4]", "[2, 2, 3, 10, 6]"]

p ArrayMatching(test1)


