def bubbleSort(unsorted_array)
  unsorted_array.sort { |a, b| a <=> b }
end

unsorted_array = [0, 2, 2, 3, 4, 78]
p bubbleSort(unsorted_array)
