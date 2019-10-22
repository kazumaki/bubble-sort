# frozen_string_literal: true
def bubble_sort (arr)
  length = arr.length
  for i in 0..length-1 do
    for j in 0..length-i-2 do
      if arr[j] > arr[j + 1]
        carry = arrToSort[j+ 1]
        arr[j + 1] = arr[j]
        arr[j] = carry
      end
    end
  end
  arr
end

def bubble_sort_by arr
  for i in 0..arr.length-2 do
    for j in 1..arr.length - (i+1) do
      if block_given?
        arr[j-1],arr[j] = arr[j],arr[j-1] if yield(arr[j-1], arr[j]) > 0
      else
        arr[j-1],arr[j] = arr[j],arr[j-1] if arr[j-1] > arr[j]
      end
    end
  end
  p arr
end

bubble_sort_by(['hi','hello','hey']) do |left, right|
  left.length - right.length
end

p ['hi','hello','hey'].sort do |left, right|
  left.length - right.length
end
