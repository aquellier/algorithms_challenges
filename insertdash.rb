# function inserts dash in a string between each two odd numbers
def InsertDash(string)
  dash_array = []
  string.chars.each_with_index do |number, index|
    dash_array << number
    dash_array << "-" if number.to_i.odd? && string[index + 1].to_i.odd?
  end
  dash_array.join
end


def DashInsert(str)
  str.chars.map.with_index{|n, i| (n.to_i % 2 == 1 && str[i- 1].to_i % 2 == 1 && i != 0) ? "-" + n : n }.join('')
end
p InsertDash('12335')
