
def fibonacci_sequence(length)
  array = [0, 1]
  while array.length < length
    array << array[-1] + array[-2]
  end
  array
end