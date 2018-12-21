# function counts the number of vowels in a string
def VowelCount(str)

  # code goes here
    counter = 0
    vowels = ["a", "e", "i", "o", "u"]
    str.chars.each { |letter| counter += 1 if vowels.include?(letter) }
    counter
end
