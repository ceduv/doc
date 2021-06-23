#================================================
#               HERITAGE

# classe Ruby donnée ne peut avoir qu'une seule superclasse.


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

# Lorsque vous appelez super depuis l'intérieur d'une méthode
    #   cela indique à Ruby de rechercher 
    #   dans la superclasse de la classe actuelle et 
    #   de trouver une méthode portant le même nom que celle 
    #   à partir de laquelle super est appelée. S'il le trouve
    #   Ruby utilisera la version de la superclasse de la méthode

# Super call la methode du meme nom de la class parent
class Creature
    def initialize(name)
          @name = name
    end       
    def fight
        return "Punch to the chops!"            #1
    end
end

class Dragon < Creature
      
    def fight
        puts "Instead of breathing fire..."     #2
        super                                   #1
    end
end
#   Instead of breathing fire...                #2
#   Punch to the chops!                         #1


#----------------------------------------------

class Message
    @@messages_sent = 0                   # class variable                            
    def initialize(from,to)               # methode
      @from = from                        # instance variable
      @to = to
      @@messages_sent += 1
    end 
end
  
my_message = Message.new("ced","alex")  #instance
  
class Email < Message                   # heritage
  
    def initialize (from,to)
        super                           # call initialize de la classe parent
    end
end