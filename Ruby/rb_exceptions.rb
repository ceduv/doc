#==================================================
#                   EXCEPTIONS



# permet de capturer des erreures
# de les appeller
# de les cree

RAISE                                       # lever une exception
raise ArgumentError                         # defini le type d erreur
raise "note n est pas un entier"            # defini le message d erreur
#
begin                                   
    ...                                 # le code a executé
rescue  ArgumentError                   # l erreur a capturer
    ...
ensure                                  # facultatif
    ...                                 # executé erreur ou non
end

ex:

def ajouterNote(note)

    if  raise "note n est pas un entier" !note.respond_to? :to_i    # 1

        notes << note

    end

end

# 1
# raise "note n est pas un entier"
# mettre une justification

#---


def ajouterNote(note)

    if  raise ArgumentError "note n est pas un entier" !note.respond_to? :to_i  # 2

        notes << note

    end
end

# 2
# Arggument Error
# Preciser le type d erreur


#----------------------------------------------------
#                       CATCH

# declare l erreur 

class Prof

    def ajouterNote(note)
        if  raise "note n est pas un entier" !note.respond_to? :to_i    # 1
            notes << note
        end
    end
end

p = Prof.new




#               CATCH


begin                   # apres begin code qui peut contenir une erreur

    p.ajouterNote([10,15])  

rescue ArgumentError     # => ???   # prend en parametre le type d erreur

    puts "impossible d ajouter une note"

rescue ZeroDivisionError            # 2 eme type d erreur

    puts "le prof n a pas de note"  

ensure                              # execute ce code quoi qu il arrive

    puts "salut fin"                # FACULTATIF

end

#------

# recupere l erreur passer en parametre


begin               

    p.ajouterNote([10,15])  

rescue ArgumentError => e       # renvoi l erreur t el que donner ds la classe

    puts e.to_s

end

# 1 
# note n est pas un entier


#----------------------------------------------------



#                CLASSE D ERREUR


# essayer de capturer d un seul coup toute les erreures du module
# grace a la classe error qui renvoi plusieurs typer d erreurs

module Notable

   class Error < RuntimeError

        class MoyenneError < Error              # heritage
                                                # runtime = erreur par defaut
            def initialize (msg = "impossible de calculer moyenne sans note ")  # erreure pas defaut
                super                           # appelle la methode parente
            end             
        end                                 

        class AjoutNoteError < Error

        end
   end

    def moyenne
    somme = 0
        raise MoyenneError if notes.length == 0                                         # err 1
        notes.each do |note|
            somme += note
        end
    somme / notes.length
    end

    def ajouterNote(note)
        if  raise AjoutNoteError "note n est pas un entier" !note.respond_to? :to_i     # err 2
            notes << note
        end
    end

end


begin                   
    p.ajouterNote([10,15])  
rescue Notable::Error => e              # permet de capturer toutes les heures de cette classe
    puts e.to_s           
end





















