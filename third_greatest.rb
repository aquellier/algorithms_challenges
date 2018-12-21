def ThirdGreatest(strArr)
  first, second, third = "", "", ""

  strArr.each do |word|
    if word.length > first.length
      first, second, third = word, first, second
    elsif word.length > second.length
      second, third = word, second
    elsif word.length > third.length
      third = word
    end
    third
  end
end
