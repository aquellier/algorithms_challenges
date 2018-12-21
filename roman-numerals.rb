ROMAN_NUMBERS = {
  "M" => 1000,
  "CM" => 900,
  "D" => 500,
  "CD" => 400,
  "C" => 100,
  "XC" => 90,
  "L" => 50,
  "XL" => 40,
  "X" => 10,
  "IX" => 9,
  "V" => 5,
  "IV" => 4,
  "I" => 1

}

def roman_numerals(string)
  results = []
  until string == ""
    last_characters = string.slice(-2, 2)
    if ROMAN_NUMBERS.key?(last_characters)
      results << ROMAN_NUMBERS[last_characters]
      string.chop!.chop!
    else
      results << ROMAN_NUMBERS[string.chars.last]
      string.chop!
    end
  end
  results.reduce(:+)
end

p roman_numerals("MMMCMXIX")
