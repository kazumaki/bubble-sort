# frozen_string_literal: true

def bubble_sort(arr)
  length = arr.length
  (0..length - 1).each do |i|
    (0..length - i - 2).each do |j|
      next if arr[j] <= arr[j+1]
      carry = arr[j + 1]
      arr[j + 1] = arr[j]
      arr[j] = carry
    end
  end
  arr
end

def bubble_sort_by(arr)
  (0..arr.length - 2).each do |i|
    (1..arr.length - (i + 1)).each do |j|
      if block_given?
        arr[j - 1], arr[j] = arr[j], arr[j - 1] if yield(arr[j - 1], arr[j]).positive?
      elsif arr[j - 1] > arr[j]
          arr[j - 1], arr[j] = arr[j], arr[j - 1]
      end
    end
  end
  p arr
end

word_list = %w[hi hello hey]
bubble_sort_by(word_list) do |left, right|
  left.length - right.length
end

p word_list.sort do |left, right|
  left.length - right.length
end
