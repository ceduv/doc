#==================================================
            # CONDITIONAL ASSIGMENT

#
def a
  puts "A was evaluated!"
  return true
end
def b
  puts "B was also evaluated!"
  return true
end
puts a || b       # 1
puts "------"     # 2
puts a && b       # 3
# return
A was evaluated!  # 1
true
------            # 2
A was evaluated!  # 3
B was also evaluated!
true

#     ||=
favorite_book = nil
puts favorite_book

favorite_book ||= "Cat's Cradle"                    # rien ou 1 
puts favorite_book                                  # renvoi 1

favorite_book ||= "Why's (Poignant) Guide to Ruby"  # 1 ou 2 comme 1!=nil
puts favorite_book                                  # renvoi 1

favorite_book = "Why's (Poignant) Guide to Ruby"    # on set une nouvelle string 3 ds la variable
puts favorite_book                                  # renvoi 3

