#=========================
#          JS     

#-------------------------
#       OBJECT 1


#-------------------------
#       synthaxe


let fasterShip = {
    color : 'silver',
    'Fuel Type': 'Turbo Fuel'
};


#----------------------------------
#   acceder au propriétés . / []


# .
const color = fasterShip.color;

# []
const fuel = fasterShip['Fuel Type'];
#===
let test = 'Fuel Type';
console.log(fasterShip[test]);


#------------------------------------
#   modifier / ajouter / suppr Prop


#   MOFIFIER / AJOUTER

#   si deja existante => modifier
#   si nouvelle => créé

const spaceship = {type: 'shuttle'};

spaceship = {type: 'alien'};
# TypeError: Assignment to constant variable.
spaceship.type = 'alien';
# Changes the value of the type property
spaceship.speed = 'Mach 5'; 
# Creates a new key of 'speed' with a value of 'Mach 5'


#   SUPPRIMER


const spaceship = {
    'Fuel Type': 'Turbo Fuel',
    homePlanet: 'Earth',
    mission: 'Explore the universe' 
};
   
delete spaceship.mission; 



#-------------------------
#       METHODES


let retreatMessage = 'Raconte pas ta vie';

const alienShip = {
  retreat(){
    console.log(retreatMessage)
  },                #   ',' pour separer les methodes ?
  takeOff(){
    console.log('BLAABLAA')
  }
}


#----------------------------
#   NESTED OBJECT (=imbriqué)


const spaceship = {             # objet A
    telescope: {                # objet A.1
       yearBuilt: 2018,         # P
       model: '91031-XLT',      # P
       focalLength: 2032        # P
    },
    crew: {                      # objet A.2
       captain: {                # objet A.2.1
           name: 'Sandra',                                 # P
           degree: 'Computer Engineering',                 # P
           encourageTeam() { console.log('We got this!') } # methodes
        }
    },
    engine: {                    # objet A.3
       model: 'Nimbus2000'       # P
    },
    nanoelectronics: {           # objet A.4
        computer: {              # objet A.4.1
           terabytes: 100,       # P
           monitors: 'HD'        # P
        },
       'back-up': {              # objet A.4.2
          battery: 'Lithium',    # P
          terabytes: 50          # P
        }
   }
};

spaceship.nanoelectronics['back-up'].battery; 
# Returns 'Lithium'


#----------------------------
#        PASS BY REF


# lorsque nous passons une variable affectée à
# un objet dans une fonction en tant qu'argument,
# l'ordinateur interprète le nom du paramètre comme
# pointant vers l'espace en mémoire contenant cet objet.

# Par conséquent, les fonctions qui modifient
# les propriétés de l'objet entraînent une mutation
# permanente de l'objet (même lorsque l'objet est
# affecté à une const variable).

let spaceship = {
    'Fuel Type' : 'Turbo Fuel',
    homePlanet : 'Earth'
};  
let greenEnergy = obj =>{
    obj['Fuel Type'] = 'avocado oil'
}  
let remotelyDisable = obj =>{
    obj.disabled = true
}  
greenEnergy(spaceship);
remotelyDisable(spaceship);
console.log(spaceship)
# { 'Fuel Type': 'avocado oil',homePlanet: 'Earth',disabled: true }


#---


const spaceship = {
    homePlanet : 'Earth',
    color : 'silver'
};
 
let paintIt = obj => {
    obj.color = 'glorious gold'
};
   
paintIt(spaceship); 
spaceship.color 
# Returns 'glorious gold'


#---


let spaceship = {
    homePlanet : 'Earth',
    color : 'red'
};
let tryReassignment = obj => {
    obj = {
      identified : false, 
      'transport type' : 'flying'
    }
    console.log(obj) 
# Prints {'identified': false, 'transport type': 'flying'}
};
tryReassignment(spaceship) 
# The attempt at reassignment does not work.
spaceship 
# returns {homePlanet : 'Earth', color : 'red'};  
spaceship = {
    identified : false, 
    'transport type': 'flying'
}; 
# Regular reassignment still works.


#----------------------------
#       for...in 


let spaceship = {
    crew: {
    captain: { 
        name: 'Lily', 
        degree: 'Computer Engineering', 
        cheerTeam() { console.log('You got this!') } 
        },
    'chief officer': { 
        name: 'Dan', 
        degree: 'Aerospace Engineering', 
        agree() { console.log('I agree, captain!') } 
        },
    medic: { 
        name: 'Clementine', 
        degree: 'Physics', 
        announce() { console.log(`Jets on!`) } },
    translator: {
        name: 'Shauna', 
        degree: 'Conservation Science', 
        powerFuel() { console.log('The tank is full!') } 
        }
    }
}; 

for (let crewmember in spaceship.crew){
  console.log(`${crewmember}: ${spaceship.crew[crewmember].name}`)
}
# on cherche ds spaceship.crew
# on divise en crewmember et on recup les infos

for(let crewmember in spaceship.crew){
  console.log(`${spaceship.crew[crewmember].name}: ${spaceship.crew[crewmember].degree}`)
}