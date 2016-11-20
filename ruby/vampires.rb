puts "How many new employees will you be entering?"
new_employees = gets.chomp.to_i

until new_employees == 0

puts "what's your name?"
name = gets.chomp
if name == "Drake Cula"
  name = false
elsif name == "Tu Fang"
  name = false
else name == true
end

puts "How old are you?"
age = gets.chomp.to_i
if age < 100
  age = true
else
  age = false
end

puts "What year were you born?"
birth_year = gets.chomp.to_i

puts "Would you like garlic bread? (yes/no)"
wants_bread = gets.chomp
if wants_bread == "yes"
  wants_bread = true
else
  wants_bread = false
end

puts "Would you like health insurance? (yes/no)"
insuarnce = gets.chomp
if insuarnce == "yes"
  insurance = true
else
  insurance = false
end





puts "Do you have any allergies? Please list one at a time and type 'done' when finished."
done = false
  until done == true
    allergies = gets.chomp
    if allergies == "done"
      done = true
    elsif allergies == "sunshine"
      sunshine_allergy = true
      done = true
    else done = false
    end
  end


case 
when sunshine_allergy == true
  puts "Probably a vampire."
when name == false
  puts "Definitely a vampire."
when age == false && wants_bread == false && insurance == false
  puts "Almost certainly a vampire."
when age == true && (wants_bread == true || insurance == true)
  puts "Probably not a vampire."
when age == false && (wants_bread == false || insurance == false)
  puts "Probably a vampire."
else puts "Results inconclusive." 
end

puts "Name: #{name}"
puts "Age is acceptable: #{age}"
puts "Birth year: #{birth_year}"
puts "Would like garlic bread: #{wants_bread}"
puts "Would like insurance: #{insurance}"

new_employees -= 1

end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

# Ask user how many employees will be processed
# After first is done, start survey and repeat until done
