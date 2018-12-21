# function must return an array of products of all the other numbers in the array
def ArrayMultiplication(arr)
  products = []
  arr.each {|number| products << arr.inject(:*) / number}
  products.join("-")
end
