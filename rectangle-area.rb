# Function determines the area of a rectangle given an array of 4 poinrs coordonates
def RectangleArea(strArr)
  # create lists for X and Y coordonates
  xs, ys = [], []
  # Transform into a string
  string = strArr.join(',')
  # Remove parentheses cause we want to access the numbers
  clean_string = string.gsub(/[()]/, "")
  # transform back into an array
  arr = clean_string.split(",")

  (0..arr.length-1).each do |i|
    coordonates = arr[i].split('')
    xs << coordonates[0].to_i
    ys << coordonates[1].to_i
  end
  width, height = xs.max - xs.min, ys.max - ys.min
  area = width * height

end

p RectangleArea(["(01)", "(31)", "(33)", "(13)"])
