def merge_sort(arr, temp=[])
  if arr.length < 2
    return arr
  else
    left = merge_sort(arr.slice!(0,(arr.length / 2.to_f).round))
    right = merge_sort(arr)

    while left.length > 0 && right.length > 0
      if left[0] < right[0]
        temp << left.slice!(0)
      else
        temp << right.slice!(0)
      end
    end

    while left.length > 0
      temp << left.slice!(0)
    end

    while right.length > 0
      temp << right.slice!(0)
    end

    return temp
  end
end

puts merge_sort([38,27,43,3,9,82,10])