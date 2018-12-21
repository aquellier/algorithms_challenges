# function returns true if there is the same number of x and o in a string
def ExOh(str)
  x = []
  o = []
  str.chars.each do |letter|
      x << letter if letter == "x"
      o << letter if letter == "o"
  end

  x.length == o.length
end
