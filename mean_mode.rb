# function determines whether mean and mode are equal in an array
def MeanMode(arr)
  arr.reduce(:+)/arr.length == arr.max_by { |i| arr.count(i) } ? 1 : 0
end

def Count(arr)
  arr.select{|r| arr.count(r) > 1}.uniq
end

def Mode(arr)
  arr.max_by { |i| arr.count(i) }
end

p Mode([1, 1, 1, 1, 1, 1, 3, 3, 4, 4, 4, 4])

