#=========================
#          JS     

#-------------------------
#       FUNCTION


function name(first,last){
    var full = first + " " + last
    return full;
}


#-------------------------------
#       DEFAUT PARAMETER


function greeting (name = 'stranger') {
    console.log(`Hello, ${name}!`)
}
   
greeting('Nick') // Output: Hello, Nick!
greeting() // Output: Hello, stranger!


#-------------------------------
#     ANONYMOUS FUNCTIONS


# fonction cree juste pour la cas precis pas besoin de la nommé

const plantNeedsWater = function(day){
    if(day==="Wednesday"){
      return true;
    }else{
      return false;
    }}
  
    console.log(plantNeedsWater('Tuesday'));


#-------------------------------
#       ARROW FUNCTIONS


# suppr le besoin de taper le mot-clé function
# chaque fois que vous devez créer une fonction.

# d'abord les paramètres à l'intérieur du ()

# => qui pointe vers 

# le corps de la fonction entouré { }


const rectangleArea = (width, height) => {
    let area = width * height;
    return area;
};


# factorisé

# si un seul parametre pas besoin de ()

const squareNum = (num) => {
    return num * num;
  };


#===


const squareNum = num => num * num;


#---


const plantNeedsWater = (day) => {
    return day === 'Wednesday' ? true : false;
  };


#===


const plantNeedsWater = day => day === 'Wednesday' ? true : false;
;