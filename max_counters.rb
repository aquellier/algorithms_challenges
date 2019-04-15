instructions = []
50000.times { instructions << rand(1..1000) }

def max_counters(size, instructions)
  counters = Array.new(size, 0)
  start_line = 0
  instructions.each do |instruction|
    if counters.size >= instruction
      counters[instruction - 1] += 1
    elsif instruction == counters.size + 1
      counters = Array.new(size, counters.max)
    end
  end
  counters
end

def maxcounters_improved(size, instructions)
  counters = Array.new(size, 0)
  start_line = 0
  instructions.each do |instruction|
    index = instruction - 1
    if instruction > size
      start_line = current_max
    elsif counters[index] < start_line
      counters[index] = start_line + 1
    else
      counters[index] += 1
    end
    current_max = counters[index] if i<=n && counters[index] > current_max
  end
end


p max_counters(5, [3, 4, 4, 6, 1, 4, 4])
