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
