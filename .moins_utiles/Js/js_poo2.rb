#=========================
#          JS     

#-------------------------
#       OBJECT 2


#-------------------------
#        THIS


const robot = {
    model:'1E78V2',
    energyLevel: 100,
    provideInfo(){
      return `I am ${this.model} and my current energy level is ${this.energyLevel}.`  
    }
};
console.log(robot.provideInfo())


# this and arrow method


const goat = {
    dietType: 'herbivore',
    makeSound() {
      console.log('baaa');
    },
    diet: () => {
      console.log(this.dietType);
    }
};   
goat.diet(); 
# Prints undefined


#-------------------------
#       PRIVACY


const bankAccount = {
    _amount: 1000
}
# _amount n'est pas destiné à être directement manipulé.


#-------------------------
#       GETTERS


# Les getters renvoient les propriétés internes d'un objet

# peuvent effectuer une action sur les données 
# lors de l'obtention d'une propriété.

# peuvent renvoyer différentes valeurs à l'aide
# de conditions.

# Dans un getter, nous pouvons accéder aux propriétés de l'
#   objet appelant en utilisant this.


const robot = {
    _model: '1E78V2',
    _energyLevel: 100,
    get energyLevel(){
      if(typeof this._energyLevel === 'number'){
        return `My current energy level is ${this._energyLevel}`
      }else{
        return 'System malfunction: cannot retrieve energy level'
      }
    }
};
console.log(robot.energyLevel)


#-------------------------
#       SETTERS


# réaffectent les valeurs des propriétés existantes
# au sein d'un objet


const robot = {
    _model: '1E78V2',
    _energyLevel: 100,
    _numOfSensors: 15,
    get numOfSensors(){
      if(typeof this._numOfSensors === 'number'){
        return this._numOfSensors;
      } else {
        return 'Sensors are currently down.'
      }
    },
    set numOfSensors(num){
      if(typeof num === "number" && num >= 0){
        this._numOfSensors = num
      }else{
        console.log('Pass in a number that is greater than or equal to 0')
      }
    }
    
};
robot.numOfSensors= 100
console.log(robot.numOfSensors) 


#-------------------------
#    FACTORY FUNCTIONS


const robotFactory = (model,mobile) =>{
    return{
        model: model,
        mobile: mobile,
            beep(){
            console.log('Beep Boop')
            }
    }
} 
const tinCan = robotFactory('P-500',true)
tinCan.beep()
# Beep Boop


#-------------------------
#       SHORTHAND


const robotFactory = (model,mobile) =>{
    return{
        model,
        mobile,
            beep(){
            console.log('Beep Boop')
            }
    }
} 


#----------------------------
#   DESTRUCTURED ASSIGNMENT


const vampire = {
    name: 'Dracula',
    residence: 'Transylvania',
    preferences: {
      day: 'stay inside',
      night: 'satisfy appetite'
    }
};

const residence = vampire.residence; 
console.log(residence); 
# Prints 'Transylvania' 

# une variable avec le nom de la clé d'un objet
# qui est entourée d'accolades { } et nous lui attribuons l'objet
const { residence } = vampire; 
console.log(residence); 
# Prints 'Transylvania'

# récupérer les propriétés imbriquées d'un objet
const { day } = vampire.preferences; 
console.log(day); 
# Prints 'stay inside'


#----------------------------
#   METHODE OBJET INTEGRE


const robot = {
	model: 'SAL-1000',
  mobile: true,
  sentient: false,
  armor: 'Steel-plated',
  energyLevel: 75
};

const robotKeys = Object.keys(robot);

console.log(robotKeys);

const robotEntries = Object.entries(robot)

console.log(robotEntries);

const newRobot = Object.assign({laserBlaster: true, voiceRecognition: true}, robot);

console.log(newRobot);


#-------------------------------------------------------------
# méthodes d'instance d'objet : .hasOwnProperty(), .valueOf()


.hasOwnProperty()
# retourne un booléen indiquant si l'objet possède la
# propriété spécifiée "en propre"

const object1 = {};
object1.property1 = 42;
console.log(object1.hasOwnProperty('property1'));
# expected output: true


#---


.valueOf()
# renvoie la valeur primitive d'un objet donné.


function MyNumberType(n) {
    this.number = n;
} 
MyNumberType.prototype.valueOf = function() {
    return this.number;
}; 
const object1 = new MyNumberType(4); 
console.log(object1 + 3);
# expected output: 7


#---------------------------------------------------------------------------------
# méthodes de classe Object : Object.assign(), Object.entries(), et Object.keys()


Object.assign()

# utilisée afin de copier les valeurs de toutes les propriétés
# directes (non héritées) d'un objet qui sont énumérables sur
# un autre objet cible

const target = { a: 1, b: 2 };
const source = { b: 4, c: 5 };
const returnedTarget = Object.assign(target, source);

console.log(target);
# expected output: Object { a: 1, b: 4, c: 5 }
console.log(returnedTarget);
# expected output: Object { a: 1, b: 4, c: 5 }


#---


Object.entries()

# La méthode Object.entries() renvoie un tableau des propriétés 
# propres énumérables d'un objet dont la clé est une chaîne de 
# caractères, sous la forme de paires [clé, valeur]

const object1 = {
    a: 'somestring',
    b: 42
  };
  
  for (const [key, value] of Object.entries(object1)) {
    console.log(`${key}: ${value}`);
  }


#---


Object.keys()

# renvoie un tableau contenant les noms des propriétés propres à un objet
# L'ordre de ce tableau est le même que celui obtenu par une boucle for...in
# (à la différence qu'une boucle for-in liste également les propriétés héritées)

const object1 = {
    a: 'somestring',
    b: 42,
    c: false
  };
  
  console.log(Object.keys(object1));