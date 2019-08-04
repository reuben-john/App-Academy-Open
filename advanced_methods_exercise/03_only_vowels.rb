# Write a method, `only_vowels?(str)`, that accepts a string as an arg.
# The method should true if the string contains only vowels.
# The method should false otherwise.

def only_vowels?(string)
  vowels = "aeiou"

  string.split.all? { |char| vowels.include?(char) }

  # string.each_char do |char|
  #   if !vowels.include?(char)
  #     false
  #   end
  # end
  # true
end

p only_vowels?("aaoeee")  # => true
p only_vowels?("iou")     # => true
p only_vowels?("cat")     # => false
p only_vowels?("over")    # => false
