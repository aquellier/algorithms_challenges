# function must return an array of products of all the other numbers in the array
def array_multiplication(arr)
  products = []
  arr.each {|number| products << arr.inject(:*) / number}
  products.join("-")
end

p array_multiplication([1, 4, 5, 7])
