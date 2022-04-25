def max_by(arr)
  return nil if arr.empty?
  leading_val = yield(arr[0])
  leading_arg = arr[0]
  arr.each do |arg|
    val = yield(arg)
    if val > leading_val
      leading_arg = arg
      leading_val = val
    end 
  end
  leading_arg
end

puts(max_by([1, 5, 3]) { |value| value + 2 } == 5)
puts(max_by([1, 5, 3]) { |value| 9 - value } == 1)
puts(max_by([1, 5, 3]) { |value| (96 - value).chr } == 1)
puts(max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5])
puts(max_by([-7]) { |value| value * 3 } == -7)
puts(max_by([]) { |value| value + 5 } == nil)