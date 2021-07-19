<?PHP

//
//
//

//////////////////////////////////////////////////


//                  HERITAGE 

// class enfants *** extends class parents
// on herite de toutes les pro/methodes du parents (modifiable)
// premet de cree une class qui fonctionne un peu differement d une autre 
// ex : class user // admin     avec des fonctionnalites differentes



//////////////////////////////////////////////////

//                 VISIBILITE

//      !!! PRIVER PAR DEFAUT ET ON ADAPTE

// PUBLIC:
// pro/meth accessible int/ext d une class

// PRIVATE:
//  ne peut pas etre appeler depuis lexterieur  
//  seulement ds la classe courante

// PROTECTED:
// les enfants peuvent y acceder

// Possibilite de rajouter STATIC



///////////////////////////////////////////////////



//                  CONSTANTE

// Pour DEFINIR une const
//      const INCREMENT = 1;

// Pour RECUPERER une const
//      self::CONSTANTE            
//  self fait ref a la classe en cours
//  static pour la classe final  (RESOLUTION STATIC A LA VOLEE)

// On peut changer cette constante dans enfants
//      const INCREMENT = 10;
