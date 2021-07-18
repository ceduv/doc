#==================================================
#               Module

#   module names = CapitalizedCamelCase

#   boîte à outils contenant un ensemble de méthodes et de constantes.
#   modules similaires class
    # Ils sont juste utilisés pour stocker des choses!
    # NI INSTANCIABLE  ---  NI HERITAGE
    # EVITE LES COLLISIONS DE CLASSES

#   séparer méthodes et constantes dans espaces nommés.
#   ainsi Ruby ne confond pas Math::PI   et   Circle::PI

#   ::
#   scope resolution operator 
#   recherchez un morceau de code spécifique.
#   Math::PI 
#   Module -> Math  le pi conrrespondant au module math 
#   ex :    puts Math::PI


#==================================================

# ex : module qui calcul avec pi

module Circle

    PI = 3.141592653589793      # CONSTANTE
        
    def Circle.area(radius)
          PI * radius**2
    end
        
    def Circle.circumference(radius)
          2 * PI * radius
    end
end

puts Circle::PI
# 3.1415....

#==================================================
#               REQUIRE MODULE

require 'date'
puts Date.today
# 2021-06-16

#==================================================
#               INCLUDE MODULE

# classe qui inclut module peut utiliser méthodes de ce module
# plus besoin de préfixer const et méth avec le nom du module
# simplement écrire PI au lieu de Math::PI.

# possibilité d en ddl


require 'date'
puts Date.today
# est ce qu on est lundi ?
puts Date.today.monday?     

# appeller une classe du fichier courant
require_relative 'eleve'    


#----------------------------------------------

# MODULE NAMESPACE

# module qui inclut classe

# on a une classe date alors que le module
# existe deja ds ruby

module Cedric
    class Eleve
        # CODE ...
    end
    class Blabla
        # CODE ...
    end
    class Date
        def talk
        puts "le fruit"
        end
    end    
end

puts Cedric::Date.new.talk


#----------------------------------------------------

# MODULE DS MODULE

module Geometrie
    module Cercle
    PI = 3.1415
        def self.perimetre(rayon)
            puts 2*PI*rayon 
        end
    end
end

puts Geometrie::Cercle::PI