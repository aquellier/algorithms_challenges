# Function swaps case in a string
def SwapCase(string)
  string.split('').each do |letter|
    letter == letter.upcase ? letter.downcase! : letter.upcase!
  end.join
end

# Simpler
def SwapCaseRuby(str)
  str.swapcase
end

p SwapCaseRuby("Hello")
