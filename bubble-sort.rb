def bubble_sort arrToSort
  length = arrToSort.length
  for i in 0..length-1 do
    for j in 0..length-i-2 do
      if arrToSort[j] > arrToSort[j + 1]
        carry = arrToSort[j+1]
        arrToSort[j+1] = arrToSort[j]
        arrToSort[j] = carry
      end
    end
  end
  arrToSort
end