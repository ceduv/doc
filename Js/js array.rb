#-------------------------
#          JS

#         ARRAY

#   Notez que vous pouvez réaffecter des éléments dans un
#    tableau et réaffecter un nouveau tableau entier à une
#    variable déclarée à l'aide de : let

const famousSayings = ['Fortune favors the brave.', 'A joke is a very serious thing.', 'Where there is love there is life.'];
var listItem = famousSayings[0];
console.log(listItem);
# Fortune favors the brave.

#
# changer une valeur

let groceryList = ['bread', 'tomatoes', 'milk'];
groceryList[1] = "avocados";

#-------------------------
#        .LENGTH

# RETURNS NUMBER OF ITEMS IN ARRAY

const newYearsResolutions = ['Keep a journal', 'Take a falconry class']; 
console.log(newYearsResolutions.length);
# Output: 2

#-------------------------
#        .PUSH()

#   ***modifie le tableau initial => mute

const itemTracker = ['item 0', 'item 1', 'item 2'];
itemTracker.push('item 3', 'item 4');
console.log(itemTracker); 
# Output: ['item 0', 'item 1', 'item 2', 'item 3', 'item 4'];


#          .POP()

#   *** mute

#  Une autre méthode de tableau, .pop(),
#   supprime le dernier élément d'un tableau.

const newItemTracker = ['item 0', 'item 1', 'item 2'];
const removed = newItemTracker.pop();
console.log(newItemTracker); 
# Output: [ 'item 0', 'item 1' ]
console.log(removed);
# Output: item 2


#       NON MUTANTES

.join()     =>
.slice()    => decoupe un morceau du tableau
    # console.log(groceryList.slice(1,4))
    #   doit etre console ds la meme ligne
.splice()   =>
.shift()    => suppr le premier elmnt du tableau
.unshift()  => add elmnt au debut du tableau
.concat()   =>


#-------------------------
#        INDEXOF()

const groceryList = ['orange juice', 'bananas', 'coffee beans', 'brown rice', 'pasta'];
const pastaIndex = groceryList.indexOf('pasta')
# 4