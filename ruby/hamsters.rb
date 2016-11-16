puts "What's the name of this hamster?"
name = gets.chomp

puts "On a scale from 1-10, how noisy is this hamster?"
volume_level = gets.chomp.to_i

puts "What is this hamster's fur color?"
fur_color = gets.chomp

puts "Is this hamster a good candidate for adoption?"
adoption_candidate = gets.chomp

puts "How old is this hamster?"
age = gets.chomp.to_i
  if age == ""
    age = nil
  end


p "This hamster's name is #{name}."
p "On a volume scale of 1-10, this hamster is a #{volume_level}."
p "This hamster has #{fur_color} fur."
p "Is this hamster a good candidate for adoption? Answer: #{adoption_candidate}."
p "Estimated age of this hamster: #{age}."