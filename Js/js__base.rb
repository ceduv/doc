#=========================
#          JS     

#-------------------------


# utilisable en console
<script src="script.js"></script> //ds le html

// => commentaire en JS
/* */ => commentaire sur plusieurs lignes


#-------------------------
#        DISPLAY


console.log(1 + 2)


#-------------------------
#        CONCAT


var fullName = first + " " + last;


#-------------------------
#        LENGTH


console.log('Teaching the world how to code'.length) 
# 30


#-------------------------
#        TRIM


console.log('    Remove whitespace   '.trim());
# Remove whitespace


#-------------------------
#     PARTICULARITEES


null        =>  absence de valeur
undefined   =>  on ne sait pas si il a une valeur
number      =>  int float - ( reunis )

#***
0 === ""        =>      false
0 == ""         =>      true (== si type different essaye de convertir)


#-------------------------
#        OBJECT


# hash / collection 
{
    "first" : "john",
     "last" : "lennon"
}


#-----------

# array
var test = []; # cree un tab vide

var students = ["john","paul","ringo","george"];
students.length # renvoi la taille du tableau
students.push("test") # ajoute test au tableau students

var student = "john";
student[0] => j


#---------------------------
#         DOM


REPRESENTATION MEMOIRE DU FICHIER HTML
# facile a manipuler ds code js

# Que gère notre code JavaScript ?
#   le dom => lien ver le code html de la page

# architecture

# PARENT -> ENFANT 
# chaque element est un noeud
# 1 seul parent








