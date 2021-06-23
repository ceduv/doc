#               Module

#   module names = CapitalizedCamelCase

#   boîte à outils contenant un ensemble de méthodes et de constantes.
#   modules similaires class
    # - les modules ne peuvent pas créer d'instances
    # - et ne peuvent pas avoir de sous-classes.
    #    Ils sont juste utilisés pour stocker des choses!
# fonctions en php ?

#   L'un des principaux objectifs des modules est de séparer 
#   les méthodes et les constantes dans des espaces nommés.
#   ainsi que Ruby ne confond pas Math::PI et Circle::PI.   namespacing

#   scope resolution operator =>    ::

#   indique à Ruby où vous recherchez un morceau de code spécifique.
#   Si nous disons Math::PI, regarder à l'intérieur du module Math 
#   pour obtenir ce PI, pas un autre PI .

#   ex :    puts Math::PI


# ex : module qui calcul avec pi
module Circle

    PI = 3.141592653589793
        
    def Circle.area(radius)
          PI * radius**2
    end
        
    def Circle.circumference(radius)
          2 * PI * radius
    end
end

#==================================================
#               REQUIRE MODULE

require 'date'
puts Date.today
# 2021-06-16

#==================================================
#               INCLUDE MODULE

#   Toute classe qui inclut un certain module peut 
#   utiliser les méthodes de ce module !
    #   Un bon effet de ceci est que vous n'avez plus besoin de préfixer
    #   vos constantes et méthodes avec le nom du module. 
    #   tout a été extrait, simplement écrire PI au lieu de Math::PI.
