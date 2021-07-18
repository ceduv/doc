#========================================
#               RESPOND TO 


# sert a tester si la convetion est possible
#   on y ajoutes des conditions

def majuscule(nom)
    if  nom.respond_to?(:to_s) # on test si nom peut etre to_s
        nom.to_s.upcase
    else
        puts "impossible a convertir en majuscule"
    end
end

#---

def triple(chiffre)
    if chiffre.respond_to?(:to_f) # on test si chiffre to_f
        chiffre.to_f * 3
    else
        puts " erreur"
    end
end 

# renvoi true si la method peut etre appelé ou false
puts age.respond_to?(:to_sym)
# false
[1, 2, 3].respond_to?(:push)
# false
puts age.respond_to?(:next) 
# true  si age=26 puts 27