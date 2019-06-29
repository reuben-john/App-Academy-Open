puts "Hello World!"

# Print out another message using puts below:
# Example:
puts 4 + 2.5   # 6.5

# Write 4 more expressions below:
puts 1 - 2 # -1
puts 34 / 12 # 2
puts 23 % 4 # 3
puts 17 + 21 # 38

# Example:
puts 4 == 4       # true

# Write 6 more expressions below:

puts 1 > -23
puts 21 != 3
puts 12 < 213
puts 20 <= 20
puts 1 == 1
puts 32 >= 231

# Example:
puts false || false   # false

# Write 4 more expressions below:
puts false || true
puts false && true
puts !true
puts false

# Example:
puts "Hello " + "World"

# Write 3 more expressions below:
puts "1" + "2"
puts "hi".length
puts "hi"[0]

# 1. Declare a variable named `firstName` and assign it your first name as a string:

firstName = "me"
# 2. Declare a variable named `lastName` and assign it your last name as a string:
lastName = "also me"

# 3. Declare a variable named `fullName` and assign it the concatenation of
# your `firstName` and `lastName`. Be sure to put a space between your
# first and last names:
fullName = firstName + " " + lastName

# 4. print out the `fullName` variable
puts fullName

sentence = "There is no spoon"
puts "---1:"
puts sentence + "?"   # There is no spoon?

puts "---2:"
puts sentence         # There is no spoon

sentence += "."
puts "---3:"
puts sentence         # There is no spoon.

num = 6 / 2
puts "---4:"
puts num              # 3

puts "---5:"
puts sentence[num]    # r

num = 40
num + 5
puts "---1:"
puts num                   # 40

num += 2
puts "---2:"
puts num                   # 42

isEven = num % 2 == 0
puts "---3:"
puts isEven                # true

isNegative = num < 0
puts "---4:"
puts isNegative            # false

puts "---5:"
puts isEven || isNegative  # true

puts "---6:"
puts isEven && isNegative  # false

puts "---7:"
puts isEven && !isNegative # true

def average_of_three(num1, num2, num3)
  return (num1 + num2 + num3) / 3.0
end

puts average_of_three(3, 7, 8)   # => 6.0
puts average_of_three(2, 5, 17)  # => 8.0
puts average_of_three(2, 8, 1)   # => 3.666666

def goodbye(name)
  return "Bye " + name
end

puts goodbye("Daniel")   # => "Bye Daniel."
puts goodbye("Mark")     # => "Bye Mark."
puts goodbye("Beyonce")  # => "Bye Beyonce."

def is_div_by_5(number)
  if number % 5 == 0
    return true
  end

  return false
end

puts is_div_by_5(10) # => true
puts is_div_by_5(40) # => true
puts is_div_by_5(42) # => false
puts is_div_by_5(8)  # => false

def either_only(number)
  if (number % 3 == 0 && number % 5 == 0)
    return false
  end
  if (number % 3 == 0 || number % 5 == 0)
    return true
  else
    return false
  end
end

puts either_only(9)  # => true
puts either_only(20) # => true
puts either_only(7)  # => false
puts either_only(15) # => false
puts either_only(30) # => false

def larger_number(num1, num2)
  if num1 > num2
    return num1
  else
    return num2
  end
end

puts larger_number(42, 28)   # => 42
puts larger_number(99, 100)  # => 100

def longer_string(str1, str2)
  if str1.length >= str2.length
    return str1
  end
  return str2
end

puts longer_string("app", "academy") # => "academy"
puts longer_string("summer", "fall") # => "summer"
puts longer_string("hello", "world") # => "hello"

def number_check(num)
  if num > 0
    return "positive"
  end
  if num == 0
    return "zero"
  end
  return "negative"
end

puts number_check(5)    # => "positive"
puts number_check(-2)   # => "negative"
puts number_check(0)    # => "zero"

def word_check(word)
  length = word.length
  if length > 6
    return "long"
  end
  if length < 6
    return "short"
  else
    return "medium"
  end
end

puts word_check("contraption") # => "long"
puts word_check("fruit")       # => "short"
puts word_check("puzzle")      # => "medium"

def count_e(word)
  i = 0
  counter = 0
  while i <= word.length
    if word[i] == "e"
      counter += 1
    end
    i += 1
  end
  puts counter
end

puts count_e("movie") # => 1
puts count_e("excellent") # => 3

def count_a(word)
  count = 0
  i = 0
  while i <= word.length
    if word[i] == "a" || word[i] == "A"
      count += 1
    end
    i += 1
  end
  return count
end

puts count_a("application")  # => 2
puts count_a("bike")         # => 0
puts count_a("Arthur")       # => 1
puts count_a("Aardvark")     # => 3

def count_vowels(word)
  i = 0
  count = 0
  vowels = ["a", "e", "i", "o", "u"]
  while i < word.length
    char = word[i]
    if vowels.include?(word[i])
      count += 1
      i += 1
    else
      i += 1
    end
  end
  return count
end

puts count_vowels("bootcamp")  # => 3
puts count_vowels("apple")     # => 2
puts count_vowels("pizza")     # => 2

def sum_nums(max)
  total = 0
  i = 0
  while i <= max
    total += i
    i += 1
  end
  return total
end

puts sum_nums(4) # => 10, because 1 + 2 + 3 + 4 = 10
puts sum_nums(5) # => 15

def factorial(num)
  i = 1
  total = 1
  while i <= num
    total *= i
    i += 1
  end
  return total
end

puts factorial(3) # => 6, because 1 * 2 * 3 = 6
puts factorial(5) # => 120, because 1 * 2 * 3 * 4 * 5 = 120

def reverse(word)
  reverse = ""

  i = word.length - 1
  while i >= 0
    reverse += word[i]
    i -= 1
  end
  return reverse
end

puts reverse("cat")          # => "tac"
puts reverse("programming")  # => "gnimmargorp"
puts reverse("bootcamp")     # => "pmactoob"

def is_palindrome(word)
  reversed = ""
  i = word.length - 1
  while i >= 0
    reversed += word[i]
    i -= 1
  end

  if reversed == word
    return true
  else
    return false
  end
end

puts is_palindrome("racecar")  # => true
puts is_palindrome("kayak")    # => true
puts is_palindrome("bootcamp") # => false

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
