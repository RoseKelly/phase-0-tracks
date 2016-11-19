puts "What is your name?"
name = gets.chomp
if name == "Drake Cula"
  name = false
end

puts "How old are you?"
age = gets.chomp.to_i
if age < 100 
  age = true
else age = false
end

puts "What year were you born?"
year = gets.chomp.to_i

puts "Would you like some garlic bread? (yes/no)"
wants_bread = gets.chomp
if wants_bread == "yes"
  wants_bread = true
else wants_bread = false
end

puts "Would you like to enroll in health insurance? (yes/no)"
insurance = gets.chomp
if insurance == "yes"
  insurance = true
else insurance = false
end


case 
when age == true && (wants_bread == true || insurance == true)
  puts "Probably not a vampire."
when age == false && (wants_bread == false && insurance == false)
  puts "Almost certainly a vampire."
when age == false && (wants_bread == false || insurance == false)
  puts "Probably a vampire."
when name == false
  puts "Definitely a vampire."

end
