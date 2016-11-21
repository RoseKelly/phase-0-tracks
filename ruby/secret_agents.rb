# PSEUDOCODING AND METHOD DECLARATIONS

# Encrypting plan:
# define encrypt method and pass a string into it
# set letter_counter to 0 (first letter of the input string)
# Use a loop? While letter_counter is less than the string.length,
# if the letter_counter is equal to "a" set it to "b"
# Spaces can remain spaces
# Then go to the next letter letter
# Add 1 to the letter_counter each time
# print the new encrypted string


# Decrypting plan: 
# define decrypt method
# start the letter_counter at 0 again?
# while the letter_counter is less than the string length,
# if the string's letter_counter is at "z" change it to "y"
# if you have a letter, and want to get the previous letter 
# find the index of the current letter, - 1 each time to get the
# index of the previous letter
# then search through the alphabet for the specific index


def encrypt(string)
  letter_counter = 0
    while letter_counter < string.length
      if string[letter_counter] == "z"
        string[letter_counter] = "a"
      elsif string[letter_counter] == " "
        string[letter_counter]
      else
        string[letter_counter] = string[letter_counter].next
      end
      letter_counter += 1
    end
    p string
  end





def decrypt(string)
  letter_counter = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  while letter_counter < string.length
    if string[letter_counter] == "a"
      string[letter_counter] = "z"
    elsif string[letter_counter] == " "
      string[letter_counter]
    else 
      new_index = alphabet.index(string[letter_counter])
      string[letter_counter] = alphabet[new_index -1]
    end
    letter_counter += 1
  end
  p string
end




=begin
Alternative way to write this, per Zach during office hours:
def decrypt(string)
  letter_counter = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  while letter_counter < string.length
    current_letter = string[letter_counter]
    if current_letter == "a"
      current_letter = "z"
    elsif current_letter == " "
      current_letter
    else 

      new_index = alphabet.index(string[current_letter])
      string[letter_counter] = alphabet[new_index -1]

    end
    letter_counter += 1
  end
  p string
end
=end


# DRIVER CODE SECTION

# encrypt("abc")
# encrypt("zed")
# decrypt("bcd")
# decrypt("afe")

# decrypt(encrypt("swordfish"))

# I believe this swordfish nested method call works because it 
# follows the regular order of Ruby logic. It first looks at the
# most nested method (in this case, encrypt), performs that call
# then looks at the outer most method (decrypt), and performs
# that call. So it first moves every letter up one, and then
# fixes itself with decrypt.

# other attempts... ignore (keeping for my own reference)
# current_letter = string[letter_counter]
# current_index = alphabet.index(current_letter)
# previous_index = current_index - 1
# alphabet = previous_index

# Ask whether encrypting or decrypting 
# Check for valid input
# Then ask for the password
# Pass the user's password to the necessary method

valid_input = false
until valid_input
  puts "Would you like to encrypt or decrypt a password?"
  agent_answer = gets.chomp
  if agent_answer == "encrypt"
    valid_input = true
  elsif agent_answer == "decrypt"
    valid_input = true
  else
    puts "Please type 'encrypt' or 'decrypt'."
  end
end

puts "Please type your password"
password = gets.chomp

if agent_answer == "encrypt"
  puts encrypt(password)
else
  puts decrypt(password)
end


