#returns list of fibonacci numbers iteratively
def fibs(num, arr=[])
  i = 0
  while i <= num
    if i < 2
      arr << i
    else
      arr << arr[i - 1] + arr[i - 2]
    end
    i += 1
  end
  return arr
end


#returns the list of fibonacci numbers up to num recursively
def fibs_rec(num, arr=[])
  return [0] if num == 0
  return [0,1] if num == 1
  if num > 1
    arr = fibs_rec(num - 1, arr)
    arr << arr[-1] + arr[-2]
    return arr
  end
end

