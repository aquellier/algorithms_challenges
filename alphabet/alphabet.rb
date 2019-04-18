def alphabet_searching(str)
  ('a'..'z').to_a.each { |letter| return false unless str.include?(letter) }
  true
end

p alphabet_searching(('a'..'z').to_a.join)
