#-------------------------
#          JS

#-------------------------
#        NUMBER

console.log(Number.isInteger(2017))
#true


#-------------------------
#         MATH


# RANDOM
console.log(Math.random())
# random numbre entre 0 & 1

Math.random() * 50;
# pour generer un nombre aleatoire entre 0 et 50
#   on * le resultat par 50

Math.floor(Math.random() * 50);
# pour nous assurer que la reponse est un entier 
#   on arrondit a l inf avec .floor

console.log(Math.floor(Math.random() * 50));
# display <= resultat arrondi <= random*50
# afficher le resultat du raisonnement au dessus


#---
#   arrondir

Math.floor(43.8)  ->  arrondi inf
Math.ceil(43.8)   ->  arrondi supp