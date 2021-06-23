#==============================================
#           SELECT

# EXTRAIRE DONNES SOUS CONDITIONS

movie_ratings = {
    memento: 3,
    primer: 3.5,
    the_matrix: 5,
    truman_show: 4,
    red_dawn: 1.5,
    skyfall: 4,
    alex_cross: 2,
    uhf: 1,
    lion_king: 3.5
  }
  # add a good_movies ce qui a une note superieur a 3 

#------------------------------------
multiples_of_3 = Proc.new do |n|
    n % 3 == 0
  end 
print (1..100).to_a.select(&multiples_of_3)
#===
multiples_of_3 = Proc.new {|n| n % 3 == 0}
print (1..100).to_a.select(&multiples_of_3)

#------------------------------------
# filtre <100
ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]
under_100 = Proc.new {|x| x<100}
youngsters = ages.select(&under_100)
puts youngsters


#================================================
#           COLLECT     

# .collect! == .map!    .collect == .map

my_nums = [1, 2, 3]
my_nums.collect { |num| num ** 2 }
# ==> [1, 4, 9]
my_nums # .collect return copy
# ==> [1, 2, 3]
my_nums.collect! { |num| num ** 2 } # ici collect! modifie le tableau a cause du "!"
# ==> [1, 4, 9]
my_nums
# ==> [1, 4, 9]


#------------------------------------
fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
doubled_fibs = fibs.collect{|n| n*2}
puts doubled_fibs

#------------------------------------
cube = Proc.new { |x| x ** 3 }          # PROC
[1, 2, 3].map(&cube)
# [1, 8, 27]

# Le & est utilisé pour convertir le proc en un bloc (.collect! et .map! prennent normalement un bloc).


