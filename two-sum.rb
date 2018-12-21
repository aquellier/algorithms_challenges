def two_sum(array)
  target, sums, results = array.shift, [], []
  array.each_with_index do |number, index|
    array[index + 1...array.length].each do |addition|
      sums << [number, addition] if number + addition == target
    end
  end
  sums.each { |array| results << array.join(',') }
  sums.empty? ? -1 : results.join(' ')
end

def two_sum_junjunpark(arr)
  first, pairs, result = arr.shift, arr.combination(2).to_a, []
  pairs.each{|pair| result << pair.join(",") if pair.reduce(:+) == first }
  result.empty? ? -1 : result.join(" ")
end

def combination_two(arr)
  arr.combination(2).to_a
end

p combination_two([1, 3, 4, 5, 6, 7, 8])
