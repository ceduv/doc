#==================================================
#                   PROC


#- BLOCK 
    #   PAS UN OBJET
    #   Un bloc n'est qu'un bout de code entre do..end ou {}
    #   peut être passé à des méthodes telles que .each ou .select.
    #   il ne peut pas etre save ds une variable
    #   executer du code ds un cas concret (fonction anonyme)
    #   1 seul block a une fonction
    #   on ne peut pas reutilisé le block car on ne peut pas le save

#- PROC
    #   OBJET                                                                   
    #   proc est un saved block
    #   DRY => Don't Repeat Yoursel => code propre
    #   (!=BLOCK)
    #   peuvent être appelés encore et encore sans les réécrire       
    #   ".call" renvoit valeur de retour de la méthode                          
    #   "&" convertir des symboles en procs en utilisant (idem lambda)

#- LAMBDA
    #   OBJET
    #   (!=PROC)
    #   lambda vérifie le nombre d'arguments qui lui sont passés                
    #   lambda errOR si mauvais nombre d'arguments,                             
    #   proc ignorera les arguments inattendus et affectera nil aux manquants   
    #   lambda return => contrôle à la méthode appelante                        
    #   proc return, immédiatement, sans revenir à la méthode appelante              


#==============================================

#           PROC

#------------------------------------

# Le & est utilisé pour convertir le proc en un bloc 
# (.collect! et .map! prennent normalement un bloc)

multiples_of_3 = Proc.new do |n|
    n % 3 == 0
  end 
print (1..100).to_a.select(&multiples_of_3)

#===

multiples_of_3 = Proc.new {|n| n % 3 == 0}
print (1..100).to_a.select(&multiples_of_3)

# [3, 6, 9, 12, 15, 18, 21, 24, 27, 30,...,99]


#--------------------------------------


#        eviter la repetition

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

#------------------------------------


# ds la fonction recuperer un block sous forme de proc

# METHODE(BLOCK) => PROC DS LA METHODE
# METHODE(&PROC) => BLOCK DS LA METHODE

eleves = [                               
    {note: 15, nom: "ced"},
    {note: 16, nom: "alex"},
    {note: 12, nom: "keke"},
    {note: 8, nom: "clem"}
]

def alamoyenne (eleves , &demo) 
    puts demo.inspect           # renvoi que demo est un proc               
    eleves.each do |eleve|                 
        if eleve[:note] >= 10            
            demo.call(eleve)                    
        end
    end
end

alamoyenne(eleves){|eleve| puts "#{eleve[:nom]} a la moyenne"}


#--------------------------------------


# on ne peut passer qu un block a une methode
# avec un seul yield a l int
# PASSER PUSIEURS PROC

eleves = [                               
    {note: 15, nom: "ced"},
    {note: 16, nom: "alex"},
    {note: 12, nom: "keke"},
    {note: 8, nom: "clem"}
]

def alamoyenne (eleves , moyenneproc, pasmoyenneproc)           
    eleves.each do |eleve|                 
        if eleve[:note] >= 10            
            moyenneproc.call(eleve)
        else
            pasmoyenneproc.call(eleve)                    
        end
    end
end
afficherQuiALaMoyenne = Proc.new{|eleve| puts "#{eleve[:nom]} a la moyenne"}
afficherQuiNAPasLaMoyenne = Proc.new{|eleve| puts "#{eleve[:nom]} n a pas la moyenne"}
alamoyenne(eleves, afficherQuiALaMoyenne , afficherQuiNAPasLaMoyenne)

#============== EX : ================
#------------------------------------

# filtre <100

ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]
under_100 = Proc.new {|x| x<100}
youngsters = ages.select(&under_100)
puts youngsters

#------------------------------------

cube = Proc.new { |x| x ** 3 }

#   met un tableau au carré

a = [1,2,3,6]
b = [1,7,9]
carre = Proc.new {|x| x**2} 
# block reutilisable => proc

a.map!(&carre)
b.map!(&carre)
puts a.inspect
puts b.inspect


#------------------------------------

floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
round_down = Proc.new {|x| x.floor}
ints = floats.collect(&round_down)
print ints

# [1, 3, 0, 7, 11, 482]



