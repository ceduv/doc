#-------------------------
#          JS

#-------------------------
#          LOOP

#-------------------------
#           FOR


# Une forboucle contient trois expressions séparées par ;
for (var i=0; i<students.length; i+=1){
    #       1           2               3
    #   1   condition d initialisation  - avant
    #   2   condition d arret   
    #   3   instruction                 - a la fin
        blabla.push
}
   

#-------------------------
#      LOOP ARRAY


const vacationSpots = ['Bali', 'Paris', 'Tulum'];

for (let i=0 ; i<vacationSpots.length ; i++){
  console.log('I would love to visit ' + vacationSpots[i])
}


#-------------------------
#      NESTED LOOPS (=imbriquée)


# Pour chaque tour de la for boucle extérieure 
#   la for boucle intérieure se déroulera complètement.

const bobsFollowers = ['ced',"duv",'alex','mull']
const tinasFollowers = ['alex','duv','neris']
const mutualFollowers = []
for(let i=0; i<bobsFollowers.length ; i++){
  for(let j=0; j<tinasFollowers.length ; j++){
    if(bobsFollowers[i]===tinasFollowers[j]){
      mutualFollowers.push(bobsFollowers[i])
    }
  }
}
console.log(mutualFollowers)


#-------------------------
#          While

#bien quand on ne connait pas le nombre d iteration

var i = 0
while (i < students.length){
    code..
    i += 1;
}

#---
# tant que current card est diff de spade on affiche

const cards = ['diamond', 'spade', 'heart', 'club'];
let currentCard = undefined;
while( currentCard != 'spade'){
  currentCard = cards[Math.floor(Math.random() * 4)];
console.log(currentCard);
}

#-------------------------
#        DO While

# quand on veut que le code s execute au moins
# 1X puis rentre ds la boucle

let countString = '';
let i = 0;
do {
  countString = countString + i;
  i++;
} while (i < 5);
 
console.log(countString);

#--- 

let cupsOfSugarNeeded = 3;
let cupsAdded = 0;
do {
 cupsAdded++
 console.log(cupsAdded + ' cup was added') 
} while (cupsAdded < cupsOfSugarNeeded);


#--------------------------
#         BREAK

# pour sortir d une boucle si besoin

const rapperArray = ["Lil' Kim", "Jay-Z", "Notorious B.I.G.", "Tupac"];

for (let i = 0; i < rapperArray.length; i++){
  console.log(rapperArray[i]);
  if(rapperArray[i] === 'Notorious B.I.G.'){
    break;
  }
}
console.log("And if you don't know, now you know.")