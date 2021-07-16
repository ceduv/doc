#==================================================
#                   LAMBDA


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

#              LAMBDA


#nouvelle synthaxe  lambda = ->{}

afficherQuiALaMoyenne = lambda {|eleve| puts "#{eleve[:nom]} a la moyenne"}
#===
afficherQuiALaMoyenne = ->{|eleve| puts "#{eleve[:nom]} a la moyenne"}


#--------------------------------------


#   "&" convertir le lambda en un bloc

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


#--------------------------------------


def a_lambda
    a = lambda {return "salut"}
    a.call # "salut"
    return "au revoir"
end

def a_proc
    a = Proc.new {return "salut"}
    a.call # return "salut"
    return "au revoir"
end

puts a_lambda   # "au revoir"   le return renvoi a la fonction ???
puts a_proc     # "salut"       le return ecrase? le return de la fonction



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

