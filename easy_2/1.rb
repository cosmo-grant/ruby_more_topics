def step(start, stop, step)
  current = start
  while current <= stop
    yield(current)
    current += step
  end
  nil
end

step(1, 10, 3) { |value| puts "value = #{value}" }