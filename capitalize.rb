# function capitalizes each element in a string
def LetterCapitalize(str)
  words = str.split(' ')
  words.map do |word|
    word[0].upcase + word [1..-1].downcase
  end.join(' ')

end

def LetterCapitalizeInline(str)
  str.split(' ').map { |word| word[0].upcase + word [1..-1].downcase}.join(' ')
end


# keep this function call here
puts LetterCapitalizeInline("antoine quellier")
