def map_by_name(arr)
  return arr.map { |hash| hash["name"] }
end

pets = [
  { "type" => "dog", "name" => "Rolo" },
  { "type" => "cat", "name" => "Sunny" },
  { "type" => "rat", "name" => "Saki" },
  { "type" => "dog", "name" => "Finn" },
  { "type" => "cat", "name" => "Buffy" },
]
print map_by_name(pets) #=> ["Rolo", "Sunny", "Saki", "Finn", "Buffy"]
puts

countries = [
  { "name" => "Japan", "continent" => "Asia" },
  { "name" => "Hungary", "continent" => "Europe" },
  { "name" => "Kenya", "continent" => "Africa" },
]
print map_by_name(countries) #=> ["Japan", "Hungary", "Kenya"]
puts

def map_by_key(arr, key)
  return arr.map { |hash| hash[key] }
end

locations = [
  { "city" => "New York City", "state" => "New York", "coast" => "East" },
  { "city" => "San Francisco", "state" => "California", "coast" => "West" },
  { "city" => "Portland", "state" => "Oregon", "coast" => "West" },
]

print map_by_key(locations, "state") #=> ["New York", "California", "Oregon"]
puts
print map_by_key(locations, "city") #=> ["New York City", "San Francisco", "Portland"]
puts

def yell_sentence(sent)
  arr = sent.split(" ")
  yelled = arr.map { |word| word.upcase + "!" }

  return yelled.join(" ")
end

puts yell_sentence("I have a bad feeling about this") #=> "I! HAVE! A! BAD! FEELING! ABOUT! THIS!"

def whisper_words(words)
  return words.map { |word| word.downcase + "..." }
end

print whisper_words(["KEEP", "The", "NOISE", "down"]) # => ["keep...", "the...", "noise...", "down..."]
puts

def o_words(sentence)
  arr = sentence.split(" ")
  return arr.select { |word| word.include?("o") }
end

print o_words("How did you do that?") #=> ["How", "you", "do"]
puts

def last_index(str, char)
  i = str.length - 1

  while i >= 0
    if str[i] == char
      return i
    end
    i -= 1
  end
end

puts last_index("abca", "a")       #=> 3
puts last_index("mississipi", "i") #=> 9
puts last_index("octagon", "o")    #=> 5
puts last_index("programming", "m") #=> 7

def most_vowels(sentence)
  vowels = {}

  sentence.split.each do |word|
    vowels[word] = count_vowels(word)
  end

  sorted_vowels = vowels.sort_by { |k, v| v }

  return sorted_vowels[-1][0]
end

def count_vowels(word)
  count = 0
  vowels = "aeiou"

  word.each_char do |char|
    if vowels.include?(char)
      count += 1
    end
  end
  return count
end

print most_vowels("what a wonderful life") #=> "wonderful"

def prime?(num)
  # Prime number only divisible by itself and 1 not including 1

  if num <= 1
    return false
  end

  (2...num).each do |x|
    if num % x == 0
      return false
    end
  end
  return true
end

puts prime?(2)  #=> true
puts prime?(5)  #=> true
puts prime?(11) #=> true
puts prime?(4)  #=> false
puts prime?(9)  #=> false
puts prime?(-5) #=> false

def pick_primes(numbers)
  return numbers.select { |num| prime?(num) }
end

def prime?(num)
  # Prime number only divisible by itself and 1 not including 1

  if num <= 1
    return false
  end

  (2...num).each do |x|
    if num % x == 0
      return false
    end
  end
  return true
end

print pick_primes([2, 3, 4, 5, 6]) #=> [2, 3, 5]
puts
print pick_primes([101, 20, 103, 2017]) #=> [101, 103, 2017]
puts

def prime_factors(num)
  factors = []

  (1...num).each do |x|
    if num % x == 0 && prime?(x)
      factors << x
    end
  end
  return factors
end

def prime?(num)
  # Prime number only divisible by itself and 1 not including 1

  if num <= 1
    return false
  end

  (2...num).each do |x|
    if num % x == 0
      return false
    end
  end
  return true
end

print prime_factors(24) #=> [2, 3]
puts
print prime_factors(60) #=> [2, 3, 5]
puts

def greatest_factor_array(arr)
  greatest_factors = arr.map do |num|
    if num % 2 == 0
      greatest_factor?(num)
    else
      num
    end
  end

  return greatest_factors
end

def greatest_factor?(num)
  (1...num).reverse_each do |i|
    if num % i == 0
      return i
    end
  end
end

def perfect_square?(num)
  (1...num).each do |x|
    if x * x == num
      return true
    end
  end
  return false
end

puts perfect_square?(5)   #=> false
puts perfect_square?(12)  #=> false
puts perfect_square?(30)  #=> false
puts perfect_square?(9)   #=> true
puts perfect_square?(25)  #=> true

def triple_sequence(start, length)
  sequence = [start]

  while sequence.length < length
    sequence << sequence[-1] * 3
  end
  return sequence
end

print triple_sequence(2, 4) # => [2, 6, 18, 54]
puts
print triple_sequence(4, 5) # => [4, 12, 36, 108, 324]
puts

def summation_sequence(start, length)
  sequence = [start]

  while sequence.length < length
    previous = sequence[-1]
    sequence << summation(previous)
  end
  return sequence
end

def summation(num)
  sum = 0

  (1..num).each { |x| sum += x }
  return sum
end

print summation_sequence(3, 4) # => [3, 6, 21, 231]
print summation_sequence(5, 3) # => [5, 15, 120]

def fibonacci(length)
  sequence = [1, 1]

  if length == 0
    return []
  elsif length == 1
    return [1]
  end

  while sequence.length < length
    sequence << sequence[-1] + sequence[-2]
  end

  return sequence
end

print fibonacci(0) # => []
puts
print fibonacci(1) # => [1]
puts
print fibonacci(6) # => [1, 1, 2, 3, 5, 8]
puts
print fibonacci(8) # => [1, 1, 2, 3, 5, 8, 13, 21]
puts

# Feel free to use this variable:
# alphabet = "abcdefghijklmnopqrstuvwxyz"

def caesar_cipher(str, num)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  shifted = ""

  str.each_char do |char|
    cur_idx = alphabet.index(char)
    shift_idx = cur_idx + num
    shift_char = alphabet[shift_idx % 26] # any number over 26 getst reset to the beginning
    shifted += shift_char
  end

  return shifted
end

puts caesar_cipher("apple", 1)    #=> "bqqmf"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher("zebra", 4)    #=> "difve"

def vowel_cipher(string)
  vowels = "aeiou"
  shifted = ""

  string.each_char do |char|
    if vowels.include?(char)
      idx = vowels.index(char)
      shift_char = vowels[(idx + 1) % vowels.length]
      shifted += shift_char
    else
      shifted += char
    end
  end

  return shifted
end

puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap

def double_letter_count(string)
  count = 0

  string.each_char.with_index do |char, idx|
    if string[idx - 1] == char
      count += 1
    end
  end
  return count
end

puts double_letter_count("the jeep rolled down the hill") #=> 3
puts double_letter_count("bootcamp") #=> 1

def adjacent_sum(arr)
  new_arr = []

  arr.each_with_index do |num, i|
    if i != arr.length - 1
      new_arr << arr[i] + arr[i + 1]
    end
  end
  return new_arr
end

print adjacent_sum([3, 7, 2, 11]) #=> [10, 9, 13], because [ 3+7, 7+2, 2+11 ]
puts
print adjacent_sum([2, 5, 1, 9, 2, 4]) #=> [7, 6, 10, 11, 6], because [2+5, 5+1, 1+9, 9+2, 2+4]
puts

# For example, the base [1, 4, 6] gives us the following pyramid
#     15
#   5   10
# 1   4    6

def pyramid_sum(base)

  # add elements together, put next level at beginning of array
  pyramid = [base]

  while pyramid.length < base.length
    prev_level = pyramid[0]
    next_level = adjacent_sum(prev_level)
    pyramid.unshift(next_level)
  end
  return pyramid
end

def adjacent_sum(arr)
  new_arr = []

  arr.each_with_index do |num, i|
    if i != arr.length - 1
      new_arr << arr[i] + arr[i + 1]
    end
  end
  return new_arr
end

print pyramid_sum([1, 4, 6]) #=> [[15], [5, 10], [1, 4, 6]]
puts

print pyramid_sum([3, 7, 2, 11]) #=> [[41], [19, 22], [10, 9, 13], [3, 7, 2, 11]]
puts

def all_else_equal(arr)
  sum = 0
  arr.each { |num| sum += num }
  half = sum / 2
  idx = arr.index(half)

  if idx == nil
    return idx
  end

  return arr[idx]
end

p all_else_equal([2, 4, 3, 10, 1]) #=> 10, because the sum of all elements is 20
p all_else_equal([6, 3, 5, -9, 1]) #=> 3, because the sum of all elements is 6
p all_else_equal([1, 2, 3, 4])     #=> nil, because the sum of all elements is 10 and there is no 5 in the array

def anagrams?(word1, word2)

  # without sort... count num of each char and compare
  return char_count(word1) == char_count(word2)
end

def char_count(word)
  count = Hash.new(0)
  word.each_char { |char| count[char] += 1 }
  return count
end

puts anagrams?("cat", "act")          #=> true
puts anagrams?("restful", "fluster")  #=> true
puts anagrams?("cat", "dog")          #=> false
puts anagrams?("boot", "bootcamp")    #=> false

def consonant_cancel(sentence)
  words = sentence.split
  new_words = words.map { |word| remove_consonant(word) }
  return new_words.join(" ")
end

def remove_consonant(word)
  vowels = "aeiou"
  word.each_char.with_index do |char, i|
    if vowels.include?(char)
      return word[i..-1]
    end
  end
end

puts consonant_cancel("down the rabbit hole") #=> "own e abbit ole"
puts consonant_cancel("writing code is challenging") #=> "iting ode is allenging"

puts consonant_cancel("down the rabbit hole") #=> "own e abbit ole"
puts consonant_cancel("writing code is challenging") #=> "iting ode is allenging"

def same_char_collapse(str)
  # loop through the string, check for same chars beside each other
  # if chars match, remove them and return the shortened word
  # do this until there are not pairs left

  reducible = true

  while reducible
    chars = str.split("")
    reducible = false

    chars.each.with_index do |char, i|
      if chars[i] == chars[i + 1]
        chars[i] = ""
        chars[i + 1] = ""
        reducible = true
        break
      end
    end

    str = chars.join("")
  end

  return str
end

puts same_char_collapse("zzzxaaxy")   #=> "zy"
# because zzzxaaxy -> zxaaxy -> zxxy -> zy

puts same_char_collapse("uqrssrqvtt") #=> "uv"
# because uqrssrqvtt -> uqrrqvtt -> uqqvtt -> uvtt -> uv
