def to_initials(name)
  initials = ""
  name_array = name.split(" ")

  name_array.each { |name| initials += name[0] }

  return initials
end

puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"

def first_in_array(arr, el1, el2)
  earliest = ""

  if arr.index(el1) < arr.index(el2)
    return el1
  else
    return el2
  end
end

puts first_in_array(["a", "b", "c", "d"], "d", "b");  # => "b"
puts first_in_array(["cat", "bird", "dog", "mouse"], "dog", "mouse");  # => "dog"

def abbreviate_sentence(sent)
  vowels = ["aeiou"]
  abrv_sent = []
  arr_sent = sent.split(" ")

  arr_sent.each do |word|
    abrv_word = ""

    if word.length <= 4
      abrv_word = word
    else
      word.each_char do |char|
        if !vowels.include?(char)
          abrv_word += char
        end
      end

      abrv_sent << word
    end
  end
  return abrv_sent.join(" ")
end

puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"

# Hint: use str.upcase and str.downcase
# "abc".upcase # => "ABC"

def format_name(str)
end

puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"

# A name is valid is if satisfies all of the following:
# - contains at least a first name and last name, separated by spaces
# - each part of the name should be capitalized
#
# Hint: use str.upcase or str.downcase
# "a".upcase # => "A"

def is_valid_name(str)
  return str.include?(" ") && format_name(str) == str
end

def format_name(str)
  norm_arr = []
  str_arr = str.split(" ")

  str_arr.each do |word|
    word = word.downcase
    word[0] = word[0].upcase
    norm_arr << word
  end

  return norm_arr.join(" ")
end

puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false

# For simplicity, we'll consider an email valid when it satisfies all of the following:
# - contains exactly one @ symbol
# - contains only lowercase alphabetic letters before the @
# - contains exactly one . after the @

def is_valid_email(str)
  at_split = str.split("@")
  dot_split = at_split[-1].split(".")

  if at_split.length > 2 || dot_split.length > 2 || at_split.length <= 1 || dot_split.length <= 1
    return false
  elsif at_split[0] == at_split[0].downcase && !/\d/.match(at_split[0])
    return true
  else
    return false
  end
end

puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false

def array_translate(array)
  combined_string = ""
  i = 0

  while i < array.length
    combined_string += array[i] * array[i + 1]
    i += 2
  end

  return combined_string
end

print array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]);  # => "CatCatDogDogDogMouse"
puts

print array_translate(["red", 3, "blue", 1]);  # => "redredredblue"
puts

def reverse_words(sent)
  words = sent.split(" ")
  rev_words = []
  words.each { |word| rev_words.push(word.reverse) }

  return rev_words.join(" ")
end

puts reverse_words("keep coding") # => 'peek gnidoc'
puts reverse_words("simplicity is prerequisite for reliability") # => 'yticilpmis si etisiuqererp rof ytilibailer'

def rotate_array(arr, num)
  num.times do
    word = arr.pop
    arr.unshift(word)
  end
  return arr
end

print rotate_array(["Matt", "Danny", "Mashu", "Matthias"], 1) # => [ "Matthias", "Matt", "Danny", "Mashu" ]
puts

print rotate_array(["a", "b", "c", "d"], 2) # => [ "c", "d", "a", "b" ]
puts

# Pig latin translation uses the following rules:
# - for words that start with a vowel, add 'yay' to the end
# - for words that start with a nonvowel, move all letters before the first vowel to the end of the word and add 'ay'

def pig_latin_word(word)
  vowels = "aeiou"

  if vowels.include?(word[0])
    return word + "yay"
  end

  word.each_char.with_index do |char, i|
    if vowels.include?(char)
      return word[i..-1] + word[0...i] + "ay"
    end
  end
end

puts pig_latin_word("apple")   # => "appleyay"
puts pig_latin_word("eat")     # => "eatyay"
puts pig_latin_word("banana")  # => "ananabay"
puts pig_latin_word("trash")   # => "ashtray"

def combinations(arr)
  unique_arr = []

  arr.each_with_index do |item1, i1|
    arr.each_with_index do |item2, i2|
      if i2 > i1
        unique_arr.push([item1, item2])
      end
    end
  end
  return unique_arr
end

print combinations(["a", "b", "c"]);  # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]);  # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts

def opposite_count(nums)
  zeros = 0

  nums.each_with_index do |num1, i1|
    nums.each_with_index do |num2, i2|
      if num1 + num2 == 0 && i2 > i1
        zeros += 1
      end
    end
  end

  return zeros
end

puts opposite_count([2, 5, 11, -5, -2, 7]) # => 2
puts opposite_count([21, -23, 24 - 12, 23]) # => 1

def two_d_sum(arr)
  sum = 0

  arr.each { |sub| sub.each { |num| sum += num } }
  return sum
end

array_1 = [
  [4, 5],
  [1, 3, 7, 1],
]
puts two_d_sum(array_1)    # => 21

array_2 = [
  [3, 3],
  [2],
  [2, 5],
]
puts two_d_sum(array_2)    # => 15

def two_d_translate(arr)
  trans = []

  arr.each do |sub|
    sub[1].times do
      trans.push(sub[0])
    end
  end

  return trans
end

arr_1 = [
  ["boot", 3],
  ["camp", 2],
  ["program", 0],
]

print two_d_translate(arr_1) # => [ 'boot', 'boot', 'boot', 'camp', 'camp' ]
puts

arr_2 = [
  ["red", 1],
  ["blue", 4],
]

print two_d_translate(arr_2) # => [ 'red', 'blue', 'blue', 'blue', 'blue' ]
puts
