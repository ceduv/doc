 #   - BLOCK n est pas un objet
        #   Un bloc n'est qu'un bout de code entre do..end ou {}
        #   Ce n'est pas un objet en soi, mais il peut être passé à des méthodes telles que .each ou .select.
        #   il ne peut pas etre save ds une variable

    #   - PROC
        #   proc est un saved block
        #   DRY => Don't Repeat Yoursel => code propre
        #   proc == objets à part entière ,pouvoirs et capacités des objets.        (!=BLOCK)
        #   les procs peuvent être appelés encore et encore sans les réécrire       (!=BLOCK)
        #   procs directement en utilisant la méthode .call                         (!=BLOCK)
        #   convertir des symboles en procs en utilisant & (idem lambda)

    #   - LAMBDA
        #   lambda vérifie le nombre d'arguments qui lui sont passés                (!=PROC)
            # lambda errOR si mauvais nombre d'arguments,                           (!=PROC)
            # proc ignorera les arguments inattendus et affectera nil aux manquants (!=PROC)
        #   lambda return => contrôle à la méthode appelante                        (!=PROC)
            # proc return, immédiatement, sans revenir à la méthode appelante       (!=PROC)     


#=============================================

#             BLOCK

odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]

ints = odds_n_ends.select{|x| x.is_a? Integer} # {|x| x.is_a? Integer} BLOCK
puts ints

#==============================================

#           PROC

# ***
# Le & est utilisé pour convertir le proc en un bloc (.collect! et .map! prennent normalement un bloc).

multiples_of_3 = Proc.new do |n|
    n % 3 == 0
  end 
print (1..100).to_a.select(&multiples_of_3)
#===
multiples_of_3 = Proc.new {|n| n % 3 == 0}
print (1..100).to_a.select(&multiples_of_3)

# [3, 6, 9, 12, 15, 18, 21, 24, 27, 30,...,99]

#------------------------------------
# filtre <100
ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]
under_100 = Proc.new {|x| x<100}
youngsters = ages.select(&under_100)
puts youngsters

#------------------------------------
cube = Proc.new { |x| x ** 3 }

#------------------------------------
floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
round_down = Proc.new {|x| x.floor}
ints = floats.collect(&round_down)
print ints

# [1, 3, 0, 7, 11, 482]

#------------------------------------
#   ex:  eviter la repetition

# PAR BLOCK
group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

over_4_feet = ________________

can_ride_1 = group_1.select { |height| height >= 4 } # BLOCK
can_ride_2 = group_2.select { |height| height >= 4 } # BLOCK
can_ride_3 = group_3.select { |height| height >= 4 } # BLOCK

puts can_ride_1
puts can_ride_2
puts can_ride_3

# PAR PROCS
group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

over_4_feet = Proc.new {|x| x >= 4}             # PROC

can_ride_1 = group_1.select(&over_4_feet)       # PROC
can_ride_2 = group_2.select(&over_4_feet)       # PROC
can_ride_3 = group_3.select(&over_4_feet)       # PROC

puts can_ride_1
puts can_ride_2
puts can_ride_3

#
#   .call
hi = Proc.new{puts"Hello!"}
hi.call

#==============================================

#              LAMBDA

#   Like procs, lambdas are objects
#   & convertir le lambda en un bloc

lambda { puts "Hello!" }
#==
Proc.new { puts "Hello!" }

#------------------------------------
def lambda_demo(a_lambda)
    puts "I'm the method!"
    a_lambda.call
end 
lambda_demo(lambda { puts "I'm the lambda!" })

#   I'm the method!
#   I'm the lambda!

#------------------------------------
#   array sting => array symbols

strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
symbolize = lambda{|param| param.to_sym}
symbols = strings.collect(&symbolize)
print symbols

#   [:leonardo, :donatello, :raphael, :michaelangelo]

#------------------------------------
#    diff lambda proc

def batman_ironman_proc
    victor = Proc.new { return "Batman will win!" } # proc return direct
    victor.call
    "Iron Man will win!"
end
puts batman_ironman_proc # Batman will win!

# renvoie immédiatement, sans revenir à la méthode batman_ironman_proc.
  
def batman_ironman_lambda
    victor = lambda { return "Batman will win!" }
    victor.call
    "Iron Man will win!"
end 
puts batman_ironman_lambda # Iron Man will win!

# Notre lambda, cependant, retourne dans la méthode après avoir été appelée
# donc la méthode renvoie le dernier code qu'elle évalue : « Iron Man va gagner !

#------------------------------------
my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

symbol_filter = lambda{|x| x.is_a? Symbol}
symbols = my_array.select(&symbol_filter)
puts  symbols
# [:kettles, :mittens, :packages]  renvoi les objets SELECT
symbol_filter = lambda{|x| x.is_a? Symbol}
symbols = my_array.map(&symbol_filter)
puts  symbols
# [false, true, false, true, true]  renvoi si les ifos sont des objets MAP||COLLECT


#------------------------------------
# alphabet < M
crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}
first_half = lambda{|key,value| value<"M"}
a_to_m = crew.select(&first_half)
puts a_to_m

# {:lt_cdr=>"Data", :chief_engineer=>"LaForge", :doctor=>"Crusher"}

