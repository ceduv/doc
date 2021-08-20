#=========================
#      NEXT SQUARE

# retourner le prochain carré du nombre saisie : -1 si neg

def find_next_square(sq)
    if Math.sqrt(sq)%1 ==0          # racine carré de sq
      test = Math.sqrt(sq)
      sqare = (test+1) * (test+1)
      sqare
      else
    -1
      end
  end

#---

def find_next_square(sq)
    Math.sqrt(sq)%1 == 0 ? (Math.sqrt(sq)+1)**2 : -1
end

#---

def find_next_square(sq)
    number = Math.sqrt(sq) + 1
    number % 1 == 0 ? number**2 : -1
  end
