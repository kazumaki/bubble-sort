# frozen_string_literal: true

def bubble_sort(arr)
  length = arr.length
  for i in 0..length - 1 do
    for j in 0..length-i-2 do
      if arr[j] > arr[j + 1]
        carry = arrToSort[j + 1]
        arr[j + 1] = arr[j]
        arr[j] = carry
      end
    end
  end
  arr
end

def bubble_sort_by(arr)
  for i in 0..arr.length - 2 do
    for j in 1..arr.length - (i + 1) do
      if block_given?
        if yield(arr[j - 1], arr[j]).positive?
          arr[j - 1],arr[j] = arr[j],arr[j - 1]
        end
      else
        if arr[j - 1] > arr[j]
          arr[j - 1],arr[j] = arr[j],arr[j - 1]
        end 
      end
    end
  end
  p arr
end

word_list = %w[hi,hello,hey]
bubble_sort_by(word_list) do |left, right|
  left.length - right.length
end

p word_list.sort do |left, right|
  left.length - right.length
end
