<?php
/*

 4 types scalaires:
1 booléen (boolean,bool)            : vrai (true)| faux (false)
2 entier (integer,int)              : 14 , -126 , 125400
3 flottant (float,double)           : 14.02 , -14.35 , -24500,2
4 chaine de caracteres (string)     : 'bonjour', "bonjour tout le monde
 
 4 types composés:
1 tableau (array)
2 objet (object)
3 fonction de rappel (callable)
4 itérateurs (iterable)

 2 types divers:
1 ressource (ressource)
2 NULL (ou "nul")

*/
$unBooleen = TRUE;
$unEntier = -14;
$unflottant = 3.14;
$uneString = 'c\'etait hier';
$uneString = "c'etait hier";

$prenom = "cedric";
echo 'Mon prenom est '.$prenom.' !';

var_dump($prenom) /* permet de donner des infos sur la variable */
/*gettype($prenom)  donne le type */
 /* is_int is_float  verifier si la variable est un/une ?? */ 

 $a = 'cedric';
 $b = &$a;

 echo $a.'<br>'.$b;

 $b= "toto"
 echo '<br>';

 echo $a.'<br>'.$b;

 ?>