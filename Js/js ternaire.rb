#-------------------------
#          JS


#        TERNAIRE   


#    IF

let isNightTime = true;
 
if (isNightTime) {
  console.log('Turn on');
} else {
  console.log('Turn off');
}
#===
isNightTime ? console.log('Turn on') : console.log('Turn off');


#
let favoritePhrase = 'Love!';

favoritePhrase === 'Love!'?console.log('love that'):console.log("don't love");


#   On peut enchaîner plusieurs évaluations 
#   ternaires l'une à la suite de l'autre 
#   de la gauche vers la droite

var premierControle = false,
secondControle = false,
acces = premierControle ? "Accès refusé" : secondControle ? "Accès refusé" : "Accès autorisé";

console.log(acces); # "Accès autorisé"


#   effectuer l'une ou l'autre expression 
#   selon le cas de figure

var stop = false, age = 16;

age > 18 ? location.assign("continue.html") : stop = true;