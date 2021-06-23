#                   MIXIN

#   les mixin imite l'héritage de plus d'une classe :
#   en mélangeant les traits de divers modules selon les besoins, 
#   nous pouvons ajouter n'importe quelle combinaison de 
#   comportements à nos classes .

#   INCLUDE MODULE
#   include mélange les méthodes d'un module au niveau de l'instance
module Action   
    def jump
      @distance = rand(4) + 2
      puts "I jumped forward #{@distance} feet!"
    end
end 
class Rabbit
    include Action
    attr_reader :name
    def initialize(name)
      @name = name
    end
end  
class Cricket
    include Action
    attr_reader :name
    def initialize(name)
      @name = name
    end
end  
peter = Rabbit.new("Peter")         #INSTANCE
jiminy = Cricket.new("Jiminy")  
peter.jump                          #INSTANCE + MODULE
jiminy.jump

#   I jumped forward 4 feet!
#   I jumped forward 3 feet!

#--------------------------------------

#   EXTENDS
#   extend mélange les méthodes d'un module au niveau de la classe.

module ThePresent
    def now
      puts "It's #{Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)."
    end
end
  
class TheHereAnd
    extend ThePresent
end
  
TheHereAnd.now
#   It's 3:50 PM (GMT).
