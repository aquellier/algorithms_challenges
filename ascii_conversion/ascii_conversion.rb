def ascii_conversion(str)
  ascii = []
  str.split(' ').each do |word|
    ascii << word.split('').map(&:ord).join
  end
  ascii.join(' ')
end
