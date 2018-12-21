# function replaces each letter in a string with the next letter in the alphaber
# and capitalizes the vowels
def nextletter(string)
  # All alphabetic caracters in the string are replaced
  new_string = string.gsub(/[a-zA-Z]/) do |letter|
    if letter == "z" || letter == "Z"
      "a"
    else
      # Letter converted to ordinal character + 1 and then reconverted to letter
      (letter.ord + 1).chr
    end
  end
  # Capitalize vowels
  new_string.tr("aeiou", "AEIOU")
end


def nextletter2(string)
  alphabet = ("a".."z").to_a
  changed_alphabet = ("a".."z").to_a.rotate.map do |letter|
    "aeiou".include?(letter) ? letter.upcase : letter
  end

  new_string = string.downcase.chars.map do |letter|
    alphabet.include?(letter) ? changed_alphabet[alphabet.index(letter)] : letter
  end.join('')
end

p nextletter2("Antoine")
