def missing(arr)
  return [] if arr.size <= 1
  missing_vals = []
  arr.each_cons(2) do |first, second|
    missing_vals.concat(((first + 1)...second).to_a)
  end
  missing_vals
end

puts(missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4])
puts(missing([1, 2, 3, 4]) == [])
puts(missing([1, 5]) == [2, 3, 4])
puts(missing([6]) == [])