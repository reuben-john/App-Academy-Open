def to_initials(name)
  initials = ""
  name_array = name.split(" ")

  name_array.each { |word| initials += word[0] }

  return initials
end

puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"

def first_in_array(arr, el1, el2)
  if arr.index(el1) < arr.index(el2)
    return el1
  else
    return el2
  end
end

puts first_in_array(["a", "b", "c", "d"], "d", "b");  # => "b"
puts first_in_array(["cat", "bird", "dog", "mouse"], "dog", "mouse");  # => "dog"

def abbreviate_sentence(sent)
  vowels = "aeiou"
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
    end
    abrv_sent << abrv_word
  end
  return abrv_sent.join(" ")
end

puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"

# Hint: use str.upcase and str.downcase
# "abc".upcase # => "ABC"

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

puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false
