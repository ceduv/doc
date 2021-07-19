#=============================
#             JS     

#------------------------------
#    FUNCTIONS HIGH ORDER


# Une fonction d'ordre supérieur  accepte des fonctions
# en tant que paramètres, renvoie une fonction ou les deux


#------------------------------
#            RAPPEL


# pssible d affecter des fonctions à des variables,
# et de les réaffecter à de nouvelles variables.

# Les fonctions JavaScript sont des objets de première classe

# propriétés telles que .length .name || méthodes telles que .toString()


const announceThatIAmDoingImportantWork = () => {
    console.log("I’m doing very important work!");
};
const busy = announceThatIAmDoingImportantWork; 
busy();                                 # This function call barely takes any space!
console.log(busy.name)                  # renvoi le nom de la function referente
# announceThatIAmDoingImportantWork

# busy est une variable qui contient une reference 
# a notre fucntion

# nous attribuons announceThatIAmDoingImportantWork sans 
# parenthèses a la variable busy .

# Nous voulons attribuer la valeur de la fonction elle-même,
# pas la valeur qu'elle renvoie lorsqu'elle est invoquée.



