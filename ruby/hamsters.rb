puts "What's the name of this hamster?"
name = gets.chomp

puts "On a scale from 1-10, how noisy is this hamster?"
volume_level = gets.chomp

puts "What is this hamster's fur color?"
fur_color = gets.chomp

puts "Is this hamster a good candidate for adoption?"
adoption_candidate = gets.chomp

puts "How old is this hamster?"
age = gets.chomp
  if age == ""
    age = nil
  end


p name
p volume_level
p fur_color
p adoption_candidate
p age