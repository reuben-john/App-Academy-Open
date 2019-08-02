def get_double_age(hash)
  return hash["age"] * 2
end

puts get_double_age({ "name" => "App Academy", "age" => 5 }) # => 10
puts get_double_age({ "name" => "Ruby", "age" => 23 })       # => 46

def get_full_name(hash)
  return hash["first"] + " " + hash["last"] + " the " + hash["title"]
end

hash1 = { "first" => "Michael", "last" => "Jordan", "title" => "GOAT" }
puts get_full_name(hash1) # => "Michael Jordan, the GOAT"

hash2 = { "first" => "Fido", "last" => "McDog", "title" => "Loyal" }
puts get_full_name(hash2) # => "Fido McDog, the Loyal"

def word_lengths(sentence)
  split = sentence.split(" ")
  hash = {}

  split.each do |word|
    hash[word] = word.length
  end

  return hash
end

puts word_lengths("this is fun") #=> {"this"=>4, "is"=>2, "fun"=>3}
puts word_lengths("When in doubt, leave it out") #=> {"When"=>4, "in"=>2, "doubt,"=>6, "leave"=>5, "it"=>2, "out"=>3}

def retrieve_values(hash1, hash2, key)
  return [hash1[key], hash2[key]]
end

dog1 = { "name" => "Fido", "color" => "brown" }
dog2 = { "name" => "Spot", "color" => "white" }
print retrieve_values(dog1, dog2, "name") #=> ["Fido", "Spot"]
puts
print retrieve_values(dog1, dog2, "color") #=> ["brown", "white"]
puts

def cat_builder(name_str, color_str, age_num)
  cat = {
    "name" => name_str,
    "color" => color_str,
    "age" => age_num,
  }

  return cat
end

print cat_builder("Whiskers", "orange", 3) #=> {"name"=>"Whiskers", "color"=>"orange", "age"=>3}
puts

print cat_builder("Salem", "black", 100) #=> {"name"=>"Salem", "color"=>"black", "age"=>100}
puts

def ae_count(str)
  matches = { "a" => 0, "e" => 0 }

  str.each_char do |char|
    if char == "a" || char == "e"
      matches[char] += 1
    end
  end
  return matches
end

puts ae_count("everyone can program") #=> {"a"=>2, "e"=>3}
puts ae_count("keyboard") #=> {"a"=>1, "e"=>1}

def element_count(arr)
  count = Hash.new(0)

  arr.each do |element|
    count[element] += 1
  end

  return count
end

puts element_count(["a", "b", "a", "a", "b"]) #=> {"a"=>3, "b"=>2}
puts element_count(["red", "red", "blue", "green"]) #=> {"red"=>2, "blue"=>1, "green"=>1}

def select_upcase_keys(hash)
  upcase = {}

  hash.each do |k, v|
    if k == k.upcase
      upcase[k] = v
    end
  end
  return upcase
end

print select_upcase_keys({ "make" => "Tesla", "MODEL" => "S", "Year" => 2018, "SEATS" => 4 }) # => {"MODEL"=>"S", "SEATS"=>4}
puts

print select_upcase_keys({ "DATE" => "July 4th", "holiday" => "Independence Day", "type" => "Federal" }) # => {"DATE"=>"July 4th"}
puts

def hand_score(hand)
  card_points = {
    "A" => 4,
    "K" => 3,
    "Q" => 2,
    "J" => 1,
  }

  score = 0

  hand.each_char do |char|
    score += card_points[char.upcase]
  end
  return score
end

puts hand_score("AQAJ") #=> 11
puts hand_score("jJka") #=> 9

def frequent_letters(string)
  recurring = []

  letters = Hash.new(0)

  string.each_char { |char| letters[char] += 1 }

  letters.each do |k, v|
    if v > 2
      recurring.push(k)
    end
  end
  return recurring
end

print frequent_letters("mississippi") #=> ["i", "s"]
puts
print frequent_letters("bootcamp") #=> []
puts

def hash_to_pairs(hash)
  pairs = []

  hash.each { |k, v| pairs.push([k, v]) }

  return pairs
end

print hash_to_pairs({ "name" => "skateboard", "wheels" => 4, "weight" => "7.5 lbs" }) #=> [["name", "skateboard"], ["wheels", 4], ["weight", "7.5 lbs"]]
puts

print hash_to_pairs({ "kingdom" => "animalia", "genus" => "canis", "breed" => "German Shepherd" }) #=> [["kingdom", "animalia"], ["genus", "canis"], ["breed", "German Shepherd"]]
puts

# Hint: all keys of a hash are automatically unique

def unique_elements(arr)
  unique = {}

  arr.each { |ele| unique[ele] = true }

  return unique.keys
end

print unique_elements(["a", "b", "a", "a", "b", "c"]) #=> ["a", "b", "c"]
puts

def element_replace(arr, hash)
  hash.each do |k, v|
    i = arr.index(k)
    arr[i.to_i] = v
  end
  return arr
end

arr1 = ["LeBron James", "Lionel Messi", "Serena Williams"]
hash1 = { "Serena Williams" => "tennis", "LeBron James" => "basketball" }
print element_replace(arr1, hash1) # => ["basketball", "Lionel Messi", "tennis"]
puts

arr2 = ["dog", "cat", "mouse"]
hash2 = { "dog" => "bork", "cat" => "meow", "duck" => "quack" }
print element_replace(arr2, hash2) # => ["bork", "meow", "mouse"]
puts
