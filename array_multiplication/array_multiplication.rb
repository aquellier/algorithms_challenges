def array_multiplication(arr)
  products = []
  arr.each { |number| products << arr.inject(:*) / number }
  products.join('-')
end
