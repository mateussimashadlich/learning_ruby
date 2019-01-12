def sum_two_smallest_numbers(numbers)
  low1 = numbers.min
  numbers.delete(numbers[numbers.index(numbers.min)])
  return low1 + numbers.min
  #Your code here
end
puts sum_two_smallest_numbers([5,1,4,3])