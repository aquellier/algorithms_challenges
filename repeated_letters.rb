def LetterCount(str)
    repeated = ""
    max = 0
    str.split(' ').each do |word|
        difference = word.split('').length - word.split('').uniq.length
        if difference > max
            repeated = word
            max = difference
        end
    end
    max == 0 ? -1 : repeated

end

# keep this function call here
puts LetterCount("No words")
