def recursive(x)
  return 0 if x === 0
  return 3 if x === 1
  3 * recursive(x - 1) - recursive(x - 2)
end

def non_recursive(x)
  return 0 if x === 0
  return 3 if x === 1

  previous_num = 0
  current_num = 3
  (x - 1).times do
    new_num = 3 * current_num - previous_num
    previous_num = current_num
    current_num = new_num
  end
  current_num
end

p non_recursive(0)
p non_recursive(1)
p non_recursive(2)
p non_recursive(3)
p non_recursive(4)
p non_recursive(5)
p non_recursive(6)
