# function returns true if there are exactly 3 characters between
# an a and a b in a string at least one time
def ABCheck(str)
  # code goes here
  str.chars.each_with_index do |c, i|
    return true if c == "a" && (str[i - 4] == "b" || str[i + 4] == "b")
  end
  false
end


p ABCheck("bifia")
