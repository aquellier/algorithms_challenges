# function checks if a string is a palindrome
def Palindrome(str)
  word = str.downcase.split(' ').join
  reversed_word = word.split('').reverse.join
  word == reversed_word
end


p Palindrome("aya")
