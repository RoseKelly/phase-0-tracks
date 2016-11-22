# INTERIOR DESIGNER FORM

# Ask the user for name, age, # of kids, and decor theme
# Convert answers to appropriate data type (string/integers)
# Ask designer if they'd like to change anything or skip
#   if they enter decor_theme, ask for new value and update
# => (find the method that turns strings into symbol): to_sym
# => if they ask to update any others, repeat step above
# => otherwise if they type "none", it's done

puts "Name:"
full_name = gets.chomp

puts "Age:"
age = gets.chomp.to_i

puts "Number of children:"
children_num = gets.chomp.to_i

puts "Preferred decor theme:"
decor_theme = gets.chomp

puts "Budget flexible (true/false):"
flexible_budget = gets.chomp

puts "Would you like to change anything? Type 'full_name', 'age', 'children_num', 'decor_theme', 'flexible_budget', or 'none'."
changed_answer = gets.chomp

puts "Please enter your new response for #{changed_answer}."
new_value = gets.chomp
  if changed_answer == "full_name"
    full_name = new_value.to_sym
  elsif changed_answer == "age"
    age = new_value.to_sym
  elsif changed_answer == "children_num"
    children_num = new_value.to_sym
  elsif changed_answer == "decor_theme"
    decor_theme = new_value.to_sym
  elsif changed_answer == "flexible_budget"
    flexible_budget = new_value.to_sym
  else
    changed_answer == "none"
  end


form_responses = {
  name: full_name,
  age: age,
  children_num: children_num,
  decor_theme: decor_theme,
  flexible_budget: flexible_budget
}


p form_responses