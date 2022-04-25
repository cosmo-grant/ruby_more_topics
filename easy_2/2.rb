def zip(arr1, arr2)
  zipped_arr = []
  counter = 0
  loop do
    break if counter == arr1.size
    zipped_arr << [arr1[counter], arr2[counter]]
    counter += 1
  end
  zipped_arr
end

puts(zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]])