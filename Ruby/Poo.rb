#               CLASS

#       instance variables      =>      @
#       variables de classe     =>      @@
    #   sont comme des variables d'instance, mais au lieu d'appartenir à une instance d'une classe, elles appartiennent à la classe elle-même.
#       Global variables        =>      $
    #   rendre une variable globale à partir d'une méthode ou d'une classe "$"

#   INITIALIZE
class Person
    def initialize(name)
    @name = name
    end
end
matz = Person.new("Yukihiro")

#-------------------------
# compte le nombre d instance dans @@people_count

class Person
    # Set your class variable to 0 on line 3
      @@people_count = 0
    
    def initialize(name)
      @name = name
      # Increment your class variable on line 8
      @@people_count += 1
    end
    
    def self.number_of_instances
      # Return your class variable on line 13
      return @@people_count
    end
  end
  
  matz = Person.new("Yukihiro")
  dhh = Person.new("David")
  
  puts "Number of Person instances: #{Person.number_of_instances}"

  
#-------------------------

  class Message

    @@messages_sent = 0     # class variable
                            
    def initialize(from,to) # methode
      @from = from          # instance variable
      @to = to
      @@messages_sent += 1
    end
  
  end