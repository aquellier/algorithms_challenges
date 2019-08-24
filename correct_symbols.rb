def SimpleSymbols(str)

  # code goes here
  letters = ('a'..'z').to_a
  array = str.split('')
  return 'false' unless array.first == '+'
  (0..array.length-1).each do |i|
    if letters.include?(array[i])
      unless array[i-1] != '+' || array[i+1] != '+'
        return 'false'
      end
    end
  end
  return 'true'
end

p SimpleSymbols("f++d+")
