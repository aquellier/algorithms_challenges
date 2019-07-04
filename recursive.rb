def recursive(x)
  if x === 0
    0
  elsif x === 1
    3
  else
    3 * recursive(x - 1) - recursive(x - 2)
  end
end


p recursive(4)
