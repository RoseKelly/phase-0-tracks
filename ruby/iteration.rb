# Video example of .each

# letters = ["a", "b", "c", "d", "e"]
# new_letters = []

# puts "Original data:"
# p letters
# p new_letters

# # iterate through the array with .each
# letters.each do |letter| 
#   new_letters << letter.next
# end

# puts "After .each call:"
# p letters
# p new_letters

# #####################

# numbers = {1 => 'one', 2 => 'two', 3 => 'three'}

# # iterate through the hash with .each

# numbers.each do |digit, word|
#   puts "#{digit} is spelled out as #{word}"
# end


# Video example of .map

# letters = ["a", "b", "c", "d", "e"]

# puts "Original data:"
# p letters

# # iterate through the array with .map

# letters.map! do |letter|
#   puts letter
#   letter.next
# end

# puts "After .map call:"
# p letters
# p modified_letters


################# Doing 5.3 again on my own

# def greeting
#   # or set variables up here:
#   # name1 = "Steve"
#   # name2 = "Rose"
#   puts "hello there!"
#   yield("Steve", "Rose")
# end

# greeting { |name1, name2| puts "Great to see you #{name1} and #{name2}!" }

# RELEASE 0: EXPLORE BLOCKS 

# def coffee
#   puts "I love coffee! This runs before the block."
#   yield("latte")
#   puts "This runs after the block."
# end

# coffee { |drink| puts "My favorite drink is a #{drink}"}


# RELEASE 1: each, map, and map!

drinks = ["coffee", "beer", "tea"]
drinks_menu = {
  coffee: "$3",
  beer: "$6",
  tea: "$2",
  wine: "$8"
}

# .each
p drinks 
p drinks_menu 

drinks.each do |drink_name|
  puts "#{drink_name} is delicious!"
end

drinks_menu.each do |drink_name, price|
  puts "#{drink_name} costs #{price}."
end

p drinks
p drinks_menu

# .map!

drinks.map! do |drink_name|
  drink_name.capitalize
end

p drinks
p drinks_menu


# RELEASE 2: Use the Documentation

# 1.

beverages = ['Beer', 'wine', 'coffee', 'Water', 'Juice']

beverages_hash = {
  beer: '7',
  wine: '6',
  coffee: '2',
  water: '1',
  juice: '2'
}


beverages.delete_if {|drink| drink != drink.capitalize}

p beverages

beverages_hash.delete_if {|drink,money| money.to_i > 3}

p beverages_hash
  

#2. 

beverages = ['Beer', 'wine', 'coffee', 'Water', 'Juice']

beverages_hash = {
  beer: '7',
  wine: '6',
  coffee: '2',
  water: '1',
  juice: '2'
}

beverages.keep_if {|drink| drink == drink.capitalize}

p beverages

beverages_hash.keep_if {|drink, money| money.to_i < 3}

p beverages_hash

#3

beverages = ['Beer', 'wine', 'coffee', 'Water', 'Juice']

beverages_hash = {
  beer: '7',
  wine: '6',
  coffee: '2',
  water: '1',
  juice: '2'
}

new_beverages = beverages.select {|drink| drink == drink.capitalize}

p new_beverages

new_beverages_hash = beverages_hash.select {|drink, money| money.to_i < 3}

p new_beverages_hash

#4

beverages = ['Beer', 'wine', 'coffee', 'Water', 'Juice']

beverages_hash = {
  beer: '7',
  wine: '6',
  coffee: '2',
  water: '1',
  juice: '2'
}


new_beverages = beverages.drop_while {|drink| drink == drink.capitalize}
p new_beverages

# didn't find a similar method for hashes



