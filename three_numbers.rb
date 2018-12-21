def ThreeNumbers(str)
  # code goes here
  return false unless str.split(' ').each { |phrase| phrase.scan(/\d/).length == 3 }
  results = []
  str.split(' ').each do |phrase|
      first, second, third = phrase.scan(/\d/)[0], phrase.scan(/\d/)[1], phrase.scan(/\d/)[2]
      return false unless
      (phrase.index(third) - phrase.index(second) > 1 ||
      phrase.index(second) - phrase.index(first) > 1) &&
      first != second &&
      second != third
  end
  true
end

p ThreeNumbers("wd45gfd6 wdfgds23o9 fk8fds9fds1")
