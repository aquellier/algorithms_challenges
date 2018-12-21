require 'pry-byebug'
require 'json'

def scale_balancing(strArr)
  targets = JSON.parse(strArr[0])
  weights = JSON.parse(strArr[1])
  weights.each do |weight|
    weights.each do |other|
      if targets[0] + weight == targets[1] + other ||
         targets[0] + weight + other == targets[1]
         targets[0] == weight + other + targets[1]
         return weight.to_s + ", " + other.to_s
      end
    end
  end
  return "not possible"
end

p scale_balancing(["[5, 4]", "[1, 2, 1, 7]"])
