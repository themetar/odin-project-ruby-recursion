def merge_sort(arr)
  return arr if arr.length < 2

  left = merge_sort(arr[0...arr.length/2])
  right = merge_sort(arr[arr.length/2...arr.length])

  out = []
  i, j = 0, 0
  while i < left.length || j < right.length
    a = left[i]
    b = right[j]
    if a.nil?
      out << b
      j += 1
    elsif b.nil?
      out << a
      i += 1
    elsif a < b
      out << a
      i += 1
    else
      out << b
      j += 1
    end
  end

  out
end

puts merge_sort([4,1,6,7,3,9,10,30,12,3,8]).join(", ")
