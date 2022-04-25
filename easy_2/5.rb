def drop_while(arr)
  new_arr = []
  keep = false
  arr.each do |val|
    keep = keep || !yield(val)
    new_arr << val if keep
  end
  new_arr
end

puts(drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6])
puts(drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6])
puts(drop_while([1, 3, 5, 6]) { |value| true } == [])
puts(drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6])
puts(drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6])
puts(drop_while([]) { |value| true } == [])