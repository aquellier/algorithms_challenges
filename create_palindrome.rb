def palindrome_check(string)
  return true if string.reverse == string && string.length >= 3
end

def remove_letter(string, index)
  return string.slice(0, index) + string.slice(index + 1, string.length - index - 1)
end

def palindrome(string)
  return "palindrome" if palindrome_check(string)

  # remove one letter
  (0..string.length-1).each do |i|
    new_string = remove_letter(string, i)
    return string[i] if palindrome_check(new_string)
  end

  # remove two letters
  (0..string.length-1).each do |i|
    new_string = remove_letter(string, i)
    (0..new_string.length-1).each do |j|
      final_string = remove_letter(new_string, j)
      return string[i] + new_string[j] if palindrome_check(final_string)
    end
  end

  return "not possible"
end

p palindrome('abbjbbacdc')
