instructions = []
50000.times { instructions << rand(1..1000) }

def max_counters(size, instructions)
  counters = Array.new(size, 0)

  instructions.each do |instruction|
    if counters.size >= instruction
      counters[instruction - 1] += 1
    elsif instruction == counters.size + 1
      counters = Array.new(size, counters.max)
    end
  end
  counters
end

p max_counters(5, [3, 4, 4, 6, 1, 4, 4])
