#=====================================
#           WORDS REVERSE

# si un mot de la phrase fait plus de 5 carac
# le reverse

saisie = "Yo fellow warriors"


def returnWords(param)
    puts param.split(' ').map {|x| x.length >= 5 ? x.reverse : x}.join(' ')
end

returnWords(saisie)

#===

# .gsub
# Returns a copy of str with all occurrences of pattern
# substituted for the second argument.

def spinWords(string)
    string.gsub(/\w{5,}/, &:reverse)
end

#===

def spinWords(string)
    tokens = string.split(' ')
    newTokens = []
    tokens.each do |token|
      if token.size >= 5
        token.reverse!
      end
      newTokens.push(token)
    end
    return newTokens.join(' ')
  end