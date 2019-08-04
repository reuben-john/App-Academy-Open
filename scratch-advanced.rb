str = "hello"   # the string
sym = :hello    # the symbol

p str.length    # => 5
p sym.length    # => 5

p str[1]        # => "e"
p sym[1]        # => "e"

p str == sym    # => false
# a string is different from a symbol!

# Symbols are unchanging and always point to the same place in memory

# Symbols as hash keys
my_bootcamp = { :name => "App Academy", :color => "red", :locations => ["NY", "SF", "ONLINE"] }
p my_bootcamp           # => {:name=>"App Academy", :color=>"red", :locations=>["NY", "SF", "ONLINE"]}
p my_bootcamp[:color]   #=> "red

# Ruby shortcut
my_bootcamp = { name: "App Academy", color: "red", locations: ["NY", "SF", "ONLINE"] }
p my_bootcamp           # => {:name=>"App Academy", :color=>"red", :locations=>["NY", "SF", "ONLINE"]}
p my_bootcamp[:color]   #=> "red

# Default Arugments

# Let's make num an optional parameter.
# By default, num will have the value of 1
def repeat(message, num = 1)
  message * num
end

p repeat("hi") # => "hi"
p repeat("hi", 3) # => "hihihi"

# Common to use nil
def greet(person_1, person_2 = nil)
  if person_2.nil?
    p "Hey " + person_1
  else
    p "Hey " + person_1 + " and " + person_2
  end
end

greet("Chao") # => "Hey Chao"
greet("Chao", "Arittro") # => "Hey Chao and Arittro"

# Option Hashes
def method(hash)
  p hash  # {"location"=>"SF", "color"=>"red", "size"=>100}
end

method({ "location" => "SF", "color" => "red", "size" => 100 })

# this also works:
method("location" => "SF", "color" => "red", "size" => 100)

def modify_string(str, options)
  str.upcase! if options["upper"]
  p str * options["repeats"]
end

# less readable
modify_string("bye", { "upper" => true, "repeats" => 3 }) # => "BYEBYEBYE"

# more readable
modify_string("bye", "upper" => true, "repeats" => 3)   # => "BYEBYEBYE"

# add default arguments for readability
def modify_string(str, options = { "upper" => false, "repeats" => 1 })
  str.upcase! if options["upper"]
  p str * options["repeats"]
end

modify_string("bye")   # => "bye"
modify_string("bye", "upper" => true, "repeats" => 3)   # => "BYEBYEBYE"

# Splat Operator
# Using splat to accept additional arguments
# this results in an error
def method(arg_1, arg_2)
  p arg_1
  p arg_2
end

method("a", "b", "c", "d", "e") # ArgumentError: wrong number of arguments (given 5, expected 2)

# use *splat to add extra args
def method(arg_1, arg_2, *other_args)
  p arg_1         # "a"
  p arg_2         # "b"
  p other_args    # ["c", "d", "e"]
end

method("a", "b", "c", "d", "e")
# if you skip adding extra args, it will be []
# always use splat at the end

# Using splat to decompose an array
def greet(first_name, last_name)
  p "Hey " + first_name + ", your last name is " + last_name
end

names = ["Grace", "Hopper"]
greet(*names)    # => "Hey Grace, your last name is Hopper"

arr_1 = ["a", "b"]
arr_2 = ["d", "e"]
arr_3 = [*arr_1, "c", *arr_2]
p arr_3 # => ["a", "b", "c", "d", "e"]

# Using splat to decompose a hash
old_hash = { a: 1, b: 2 }
new_hash = { **old_hash, c: 3 }
p new_hash # => {:a=>1, :b=>2, :c=>3}

# Inject - reduce in other languages
p [11, 7, 2, 4].inject { |acc, el| acc + el } # => 24
p [11, 7, 2, 4].inject { |acc, el| acc * el } # => 616
p [11, 7, 2, 4].inject do |acc, el|
  if el < acc
    el
  else
    acc
  end
end # => 2

# Inject with a default accumulator
p [11, 7, 2, 4].inject(100) { |acc, el| acc + el } # => 124
[11, 7, 2, 4].inject(0) do |acc, el|
  if el.even?
    acc + el
  else
    acc
  end
end # => 6
