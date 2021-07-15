#==================================================
#                   MIXIN

#   les mixin imite l'héritage de plus d'une classe :
#   permet d utiliser les modules créé dans nos
#   classe .

#   INCLUDE MODULE
#   include mélange les méthodes d'un module au niveau de l'instance
module Action   
    def jump
      @distance = rand(4) + 2
      puts "I jumped forward #{@distance} feet!"
    end
end 

class Rabbit
    include Action                  # include module
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
peter = Rabbit.new("Peter")         # INSTANCE
jiminy = Cricket.new("Jiminy")  
peter.jump                          # INSTANCE + MODULE
jiminy.jump

#   I jumped forward 4 feet!
#   I jumped forward 3 feet!

#--------------------------------------

#               EXTENDS

#   extend mélange les méthodes d'un module au niveau de la classe.
#   toutes les methodes d instance du premier module seront disponible
#   en methode de classe  pour la classe extend
#   comme si on mettais des self.(def) -> methode de classe


module A 

  def self.extended(base)             # hook ???
    puts  "#{base.to_s} extend de a"
  end
  def demo
    puts "demo"
  end
end

class B
  extend A      # les module d instance sont disponible ds la classe
end             # cree les methodes au niveau de la classe
C.demo
# demo
#---
c = C.new
c.extend(A)     # methode classe seulement pour cette instance c
c.demo          # cree la methode pour l instace

#---------------------------------------------

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

