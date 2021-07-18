#================================================
#               HERITAGE

# inheritance
# classe Ruby donnée ne peut avoir qu'une seule superclasse.
# possibilité d ajoute des methodes
# possibilité d ecraser des methodes de la classe parent

instance.class                  # nom de la classe instancié
instance.class.superclasse      # nom de la classe parent


class ApplicationError
    def display_error
      puts "Error! Error!"
    end
  end
  
  class SuperBadError < ApplicationError
  end
  
  err = SuperBadError.new
  err.display_error
#   Error! Error!

#================================================
#               SUPER

# super depuis l'intérieur d'une méthode appelle
#   appelle la methode de la superclasse portan
#   le même nom 

# Super call la methode parent et retournera son resultat
class Creature
    def initialize(name)
          @name = name
    end       
    def fight
        return "Punch to the chops!"            # AAA
    end
end

class Dragon < Creature
      
    def fight
        puts "Instead of breathing fire..."     # 2
        super                                   # AAA apelle la methode fight de superclasse
    end
end
#   Instead of breathing fire...                # 2
#   Punch to the chops!                         # AAA


#----------------------------------------------

# possible de modifier les parametres du super

class Delegue < Eleve 
    def ajouterNote(note)
        super (note + 1 )
    end
end


#----------------------------------------------

class Message
    @@messages_sent = 0                   # class variable                            
    def initialize(from,to)               # methode
      @from = from                        # instance variable
      @to = to
      @@messages_sent += 1
    end 
end
  
my_message = Message.new("ced","alex")  # instance
  
class Email < Message                   # heritage
  
    def initialize (from,to)
        super                           # call initialize de la classe parent
    end
end

#-----------------------------------------------


