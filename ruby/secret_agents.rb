# define the encrypt method
# begin the letter_count at 0 (first letter of the input string)
# start the loop: while letter_count is less than the string length,
# if it's "a" change it to "b" and so on <-- this did not work but
# "z" to "a" did.
# if it's a space, change nothing
# add one letter each time so you're always looking at the next one


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

