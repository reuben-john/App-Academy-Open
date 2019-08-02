def doubler(numbers)
  i = 0
  newArr = []

  while i < numbers.length
    newArr << (numbers[i] * 2)
    i += 1
  end
  return newArr
end

print doubler([1, 2, 3, 4]) # => [2, 4, 6, 8]
puts
print doubler([7, 1, 8])    # => [14, 2, 16]

def yell(words)
  yelled_words = []
  i = 0
  while i < words.length
    yelled_words << words[i] + "!"
    i += 1
  end
  return yelled_words
end

print yell(["hello", "world"]) # => ["hello!", "world!"]
puts
print yell(["code", "is", "cool"]) # => ["code!", "is!", "cool!"]

def element_times_index(numbers)
  i = 0
  multi_num = []
  while i < numbers.length
    multi_num << (numbers[i] * i)
    i += 1
  end
  return multi_num
end

print element_times_index([4, 7, 6, 5])       # => [0, 7, 12, 15]
puts
print element_times_index([1, 1, 1, 1, 1, 1]) # => [0, 1, 2, 3, 4, 5]

def even_nums(max)
  i = 0
  arr = []
  while i <= max
    if i % 2 == 0
      arr << i
    end
    i += 1
  end
  return arr
end

print even_nums(10) # => [0, 2, 4, 6, 8, 10]
puts
print even_nums(5)  # => [0, 2, 4]

def range(min, max)
  i = min
  numbers = []
  while i <= max
    numbers << i
    i += 1
  end
  return numbers
end

print range(2, 7)   # => [2, 3, 4, 5, 6, 7]
puts
print range(13, 20) # => [13, 14, 15, 16, 17, 18, 19, 20]

def odd_range(min, max)
  odd_numbers = []
  i = min
  while i <= max
    if i % 2 != 0
      odd_numbers << i
    end
    i += 1
  end

  return odd_numbers
end

print odd_range(11, 18) # => [11, 13, 15, 17]
puts
print odd_range(3, 7)   # => [3, 5, 7]

def reverse_range(min, max)
  rev_arr = []
  i = max - 1
  while i > min
    rev_arr << i
    i -= 1
  end
  return rev_arr
end

print reverse_range(10, 17) # => [16, 15, 14, 13, 12, 11]
puts
print reverse_range(1, 7)   # => [6, 5, 4, 3, 2]

def first_half(array)
  i = 0
  odd = 0
  new_arr = []
  len = array.length
  if len % 2 != 0
    odd = 1
  end

  mid = (array.length / 2) + odd

  while i < mid
    new_arr << array[i]
    i += 1
  end
  return new_arr
end

print first_half(["Brian", "Abby", "David", "Ommi"]) # => ["Brian", "Abby"]
puts
print first_half(["a", "b", "c", "d", "e"])          # => ["a", "b", "c"]

def factors_of(num)
  i = 1
  factors = []
  while i <= num
    if num % i == 0
      factors << i
    end
    i += 1
  end
  return factors
end

print factors_of(3)   # => [1, 3]
puts
print factors_of(4)   # => [1, 2, 4]
puts
print factors_of(8)   # => [1, 2, 4, 8]
puts
print factors_of(9)   # => [1, 3, 9]
puts
print factors_of(16)  # => [1, 2, 4, 8, 16]

def select_odds(numbers)
  i = 0
  odds = []
  while i < numbers.length
    if numbers[i] % 2 != 0
      odds << numbers[i]
    end
    i += 1
  end
  return odds
end

print select_odds([13, 4, 3, 7, 6, 11]) # => [13, 3, 7, 11]
puts
print select_odds([2, 4, 6])            # => []

def select_long_words(words)
  i = 0
  selected = []

  while i < words.length
    word = words[i]
    if word.length > 4
      selected << word
    end
    i += 1
  end
  return selected
end

print select_long_words(["what", "are", "we", "eating", "for", "dinner"]) # => ["eating", "dinner"]
puts
print select_long_words(["keep", "coding"])                               # => ["coding"]

def sum_elements(arr1, arr2)
  i = 0
  totals = []

  while i < arr1.length
    totals << arr1[i] + arr2[i]
    i += 1
  end
  return totals
end

print sum_elements([7, 4, 4], [3, 2, 11])                            # => [10, 6, 15]
puts
print sum_elements(["cat", "pizza", "boot"], ["dog", "pie", "camp"]) # => ["catdog", "pizzapie", "bootcamp"]

def fizz_buzz(max)
  i = 1
  array = []

  while i < max
    if i % 4 == 0 && i % 6 == 0
      i += 1
      next
    end

    if i % 4 == 0 || i % 6 == 0
      array << i
    end
    i += 1
  end
  return array
end

print fizz_buzz(20) # => [4, 6, 8, 16, 18]
puts
print fizz_buzz(15) # => [4, 6, 8]
