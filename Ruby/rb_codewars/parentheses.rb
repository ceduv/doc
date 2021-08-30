#==================================
#           PARENTHESES

# faire correspondre au pattend suivant
"()"              =>  true
")(()))"          =>  false
"("               =>  false
"(())((()())())"  =>  true


def valid_parentheses(string)
    #your code here
    a = 0
    
    string.chars.map do |x|
       if x == "("
          a += 1
       elsif x == ")"
          a -= 1
         if a == -1
           return false
           exit
           end
       end
      end

#===

def valid_parentheses(string)
    open = 0
    string.chars.each do |c|
      open += 1 if c == "("
      open -= 1 if c == ")"
      return false if open < 0
    end
    open == 0
  end


#===

def valid_parentheses(string)
    str = string.delete("^()")
    while str.gsub!("()",''); end
    str == '' 
   end


#===

#???
def valid_parentheses(string)
    ~ Regexp.new(string) == nil rescue false
  end