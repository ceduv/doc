<?PHP

//                   FUNC


// strtotime 
//       Transforme un texte anglais en timestamp

// abs
//       valeur absolue

// floor 
//       arrondit entier inf 

//////////////////////////////////////////////////


//                 OBJET
//


//
// on cree l OBJET datetime qu on stock ds une var
//
//      $date = new DateTime($datetest1);
//


//   " -> " 
//
//  sert a appeler une methode , fonction ds un objet
//  ex : 
//
//      $date->modify('+1 month');
//


//  utlisation des proprietes de l objet cree avec : 
//
//  DateInterval
//
//  echo "il y a {$diff->y} annee {$diff->m} mois {$diff->d} jours de dif";



//////////////////////////////////////////////////

//              DateInterval


//  P
//Le format commence avec la lettre P, pour period. Chaque durée de la période est représentée par une valeur entière suivie par une désignation de période.


//  T
// Si la durée contient des éléments de temps, cette portion de la spécification est précédée par la lettre T.


//  ex :
//
//  objet  intervalle de temps de 2ans 1moi 1j ...
//
//          $interval = new DateInterval('P2Y1M1DT1H');
