#Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
#1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

def fibs_upto(max_val, arr=[])
  if !arr.empty? && arr[-1] > max_val
    return arr[0...-1]
  else
    arr << 0 if arr.length == 0
    arr << 1 if arr.length == 1
    arr << arr[-2] + arr[-1] if arr.length > 1
    fibs_upto(max_val, arr)
  end
end

puts fibs_upto(4000000).select{ |x| x % 2 == 0}.sum



