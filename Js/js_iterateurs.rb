#=========================
#          JS     

#-------------------------
#    ITERATEURS


# Toutes les méthodes d'itérateur prennent une fonction de 
#   rappel qui peut être prédéfinie, ou une expression de
#   fonction, ou une fonction de flèche.


#-------------------------
#       .forEach()


# .forEach()est utilisé pour exécuter le même code 
#   sur chaque élément d'un tableau mais ne modifie 
#   pas le tableau et renvoie undefined.

const groceries = ['sugar','salt','cranberries'];

groceries.forEach(function(groceryItem){
    console.log('-' + groceryItem);
});
#===
function printGrocery(element){
    console.log('-'+element);
}
groceries.forEach(printGrocery);
#===
groceries.forEach(groceryItem => console.log('-'+groceryItem));



#-------------------------
#         .map()


# .map() exécute le même code sur chaque élément
#   d'un tableau et renvoie un nouveau tableau avec
#   les éléments mis à jour.

const numbers = [1, 2, 3, 4, 5];  
const bigNumbers = numbers.map(number => {
  return number * 10;
});
console.log(numbers); # [1, 2, 3, 4, 5]
console.log(bigNumbers); # [10, 20, 30, 40, 50]

#---
const animals = ['Hen', 'elephant', 'llama', 'leopard', 'ostrich', 'Whale', 'octopus', 'rabbit', 'lion', 'dog'];
const secretMessage = animals.map(animal=>{return animal[0]})
console.log(secretMessage.join(''));
# Helloworld


#-------------------------
#       .filter()


# prend un tableau renvoi un tableau

# apres voir filtré les elements
# nouveau tableau avec les éléments mis à jour

const words = ['chair', 'music', 'pillow', 'brick', 'pen', 'door']; 
 
const shortWords = words.filter(word => {
  return word.length < 6;
});


#---


const randomNumbers = [375, 200, 3.14, 7, 13, 852];
const smallNumbers = randomNumbers.filter(numb=>{
   return numb < 250;
});


#---


const favoriteWords = ['nostalgia', 'hyperbole', 'fervent', 'esoteric', 'serene'];
const longFavoriteWords = favoriteWords.filter(word=>{
    return word.length > 7
})
console.log(longFavoriteWords)


#-------------------------
#      .findIndex()


# renverra l'index du premier élément évalué true
# dans la fonction de rappel.
# renvoie -1 si aucun des éléments ne satisfait la condition.


const animals = ['lion', 'seal', 'cheetah', 'monkey', 'salamander', 'elephant'];

const foundAnimal = animals.findIndex(anim=>{
  return anim === 'elephant'
})

const startsWithS = animals.findIndex(anim=>{
  return anim[0] === 's'
})


#-------------------------
#        .reduce()


# renvoie une valeur unique après avoir 
# parcouru les éléments d'un tableau


const numbers = [1, 2, 4, 10];
const summedNums = numbers.reduce((accumulator, currentValue) => {
  return accumulator + currentValue
})
console.log(summedNums) # 17
# The callback function has two parameters, accumulator and currentValue.
# first     1   2   3
# second    3   4   7   
# Third     7   10  17

#--- second argument


const numbers = [1, 2, 4, 10];
const summedNums = numbers.reduce((accumulator, currentValue) => {
  return accumulator + currentValue
}, 100)  # <- Second argument for .reduce() 
console.log(summedNums); # 117


#-------------------------
#   .every() / .some()


# .every() -> bool

# permet de tester si tt les elements d un tableau 
# verifie une condition donné


# .some()

# test si au moins un element du tableau passe le
#   test implementé par la fonction fournie


const words = ['unique', 'uncanny', 'pique', 'oxymoron', 'guise'];

console.log(words.some(word => {
  return word.length < 6;
}));

const interestingWords = words.filter((word) => {return word.length > 5});

console.log(interestingWords.every((word) => {return word.length > 5}));
