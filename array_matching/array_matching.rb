def sum_array(array)
  result = []
  clean_array = [array[0].delete('[]').split(', '),
                 array[1].delete('[]').split(', ')]
  max_length = [clean_array[0].length, clean_array[1].length].max

  (0..max_length - 1).each do |i|
    result << clean_array[0][i].to_i + clean_array[1][i].to_i
  end

  result.join('-')
end
