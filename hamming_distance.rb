def HammingDistance(strArr)
    counter = 0
    first_string, second_string = strArr[0].chars, strArr[1].chars
    (0..first_string.length - 1).each { |i| first_string[i] != second_string[i] ? counter += 1 : counter += 0 }
    counter
end

