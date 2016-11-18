puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i
if age < 100 
  age = true
end

puts "What year were you born?"
year = gets.chomp.to_i

puts "Would you like some garlic bread? (yes/no)"
wants_bread = gets.chomp
if wants_bread == "yes"
  wants_bread = true
end

puts "Would you like to enroll in health insurance? (yes/no)"
insurance = gets.chomp
if insurance == "yes"
  insurance = true
end

case 
when age == true && (wants_bread == true || insurance == true)
  puts "Probably not a vampire."
when age == false && (wants_bread == false || insurance == false)
  puts "Probably a vampire."
end
