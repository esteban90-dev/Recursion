#Find the sum of all the multiples of 3 or 5 below 1000.
def multiples(num, arr=[])
  if num == 0
    return arr[1..-1].sum
  else
    arr << num if (num % 5 == 0) || (num % 3 == 0)
    multiples(num - 1, arr)
  end
end

puts multiples(1000)