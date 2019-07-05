require 'byebug'

def number_addition(string)
  numbers = []
  array = string.split('')
  numbers << array.first.to_i
  (1...array.length).each do |index|
    if array[index - 1].to_i != 0 && array[index].to_i != 0
      numbers << (array[index - 1] + array[index]).to_i
    else
      numbers << array[index].to_i
    end
  end
  numbers.sum
end

p number_addition("Hel3rezr45fsf6")
