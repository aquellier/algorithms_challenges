# function returns true if each letter in a string is between 2 plus signs
def lettersChecking(str)
  alphabet = ("a".."z").to_a
  str.chars.each_with_index do |c, i|
    prev, foll = str[i - 1], str[i + 1]
    if alphabet.include?(c)
      if i > 0 && i < str.length-1
        return false if prev != "+" || foll != "+"
      elsif i == 0 || i == str.length - 1
        return false
      end
    end
  end
  true
end

p lettersChecking("++d++d+//+d+")
