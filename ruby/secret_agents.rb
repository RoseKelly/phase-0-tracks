# define encrypt method and pass a string into it
# set letter_counter to 0 (first letter of the input string)
# Use a loop? While letter_counter is less than the string.length,
# if the letter_counter is equal to "a" set it to "b"
# Spaces can remain spaces
# Then go to the next letter letter
# Add 1 to the letter_counter each time
# print the new encrypted string


def encrypt(string)
  letter_counter = 0
    while letter_counter < string.length
      if string[letter_counter] == "z"
        string [letter_counter] = "a"
      elsif string[letter_counter] == " "
        string[letter_counter]
      else
        string[letter_counter] = string[letter_counter].next
      end
      letter_counter += 1
    end
    p string
  end

encrypt("abc")
encrypt("zed")


# define decrypt method
# start the letter_counter at 0 again? Or -1?
# while the letter_counter is less than the string length,
# if the string's letter_counter is at "z" change it to "y"

# if you have a letter, and want to get the previous letter 
# find the index of the current letter, -= 1 each time for the
# index of the previous letter
# then search thru the alphabet for the specific index


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

    
    # other attempts... ignore
    # current_letter = string[letter_counter]
    #  current_index = alphabet.index(current_letter)
    #  previous_index = current_index - 1
    #  alphabet = previous_index




















def decrypt(string)
  letter_counter = 0
    while letter_counter < string.length
      if string[letter_counter] == "z"
        string [letter_counter] = "y"
      elsif string[letter_counter] == " "
        string[letter_counter]
      else
        string[letter_counter] = string[-1]
      end
      letter_counter -= 1
    end
    p string
  end

encrypt("abc")
encrypt("zed")



















def encrpyt2(string)
  letter_count = 0
  while letter_count < string.length 
    if string[letter_counter] == "a"
      string[letter_counter] = "b"
    elsif string[letter_counter] == " "
      string[letter_counter]
    else
    end
    letter_counter += 1
  end
  p string
end

