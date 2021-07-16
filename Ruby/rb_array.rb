#==========================================
#               SORT

# TRIER UN TABLEAU SOUS CONDITIONS
# TRI DANS DES ORDRES DIFFERENTS SELON BOOL

def alphabetize(arr, rev=false) #parametre pardefaut
  if rev
    arr.sort { |item1, item2| item2 <=> item1 } 
  else
    arr.sort { |item1, item2| item1 <=> item2 }
  end
end

books = ["Heart of Darkness", "Code Complete", "The Lorax", "The Prophet", "Absalom, Absalom!"]

puts "A-Z: #{alphabetize(books)}"
puts "Z-A: #{alphabetize(books, true)}"

#============================================
#               PUSH

#PUSH VALEUR D UN ARR VES UN AUTRE

strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

symbols = []

strings.each do |a|
  
  symbols.push(a.to_sym) #on push ds symbols les valeurs de strings qu on transforme en symbol to_sym
end

print symbols

dans movie rating
good_movies = movie_ratings.select{|a,b| b > 3}