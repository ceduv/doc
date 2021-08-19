#========================================
#             PANGRAMS?

# checker si toutes les lettres de l alphabet son ds la phrase

string =  "The quick brown fox jumps"

def pangram?(string)
  # enter your code here
  ("a".."z").all? {|x| string.downcase.include? (x)}
end

puts pangram?(string)

.all?       # Passes each element of the collection to the given block
.include?   # Returns true if str contains the given string or character.

#===

def panagram?(string)
   string.downcase.scan(/[a-z]/).uniq.size == 26
end

.scan(pattern)  # try to match with pattern as current position
                # if match , advances scanner pointer
.uniq           # Returns a new array by removing duplicate values in self.
                # If a block is given will use the return
                # value of the block for compar

#===

def panagram?(s)
  ("A".."Z").to_a - s.upcase.chars == []
end

- s # ???
