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
