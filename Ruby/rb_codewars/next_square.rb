#=========================
#      NEXT SQUARE

def find_next_square(sq)
    # Return the next square if sq is a perfect square, -1 otherwise
    if Math.sqrt(sq)%1 ==0
      test = Math.sqrt(sq)
      sqare = (test+1) * (test+1)
      sqare
      else
    -1
      end
  end

#---

def find_next_square(sq)
    # Return the next square if sq is a perfect square, -1 otherwise
    Math.sqrt(sq)%1 == 0 ? (Math.sqrt(sq)+1)**2 : -1
end

#---

def find_next_square(sq)
    # Return the next square if sq is a perfect square, -1 otherwise
    number = Math.sqrt(sq) + 1
    number % 1 == 0 ? number**2 : -1
  end
