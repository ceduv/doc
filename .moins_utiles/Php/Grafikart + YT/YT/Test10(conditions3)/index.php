<?php 
/*
Fonctions usuelles :
    is_bools()
    is_int()
    is_float()
    is_string()
*/
$number = 1;

switch($number) {// verifie une ==
    case 1:
        echo"1";
        break; //interomp la structure en cour si ==
    case 2:
        echo"2";
        break;
    case 3:
        echo"3";
        break;
    default:
        echo"invalide";
        break;    
}
echo "<br />";
//==================================================================================//

$jeu_lance = 1;
$message = '';

if($jeu_lance)
$message = "le jeu est en route";
else
$message = "le jeu est eteint";

echo $message;

echo "<br />";
//==================================================================================//
//terner???
$message2 = ($jeu_lance) ?" jeu en route" : "jeu eteint";
echo "$message2";

echo "<br />";
//==================================================================================//

$mavariable = "ok";

if(isset($mavariable)) //est ce que ma variable est defini , est ce quel existe ??
echo"elle existe";    //!isset pour verifier l inverse
else
echo"elle n existe pas";

echo "<br />";

unset($mavariable); //annulé variable
if(isset($mavariable))
echo" elle existe";
else
echo" elle n existe pas";

echo "<br />";

$res = $mavariable ?? "nonono"; // ????? interet? ?? ca veut dire quoi?
echo $res;

echo "<br />";

$nb1= 14;
$nb2= 9;

if($nb1 !== $nb2)
echo"completement different mais faux ^^"; //faux dans la verif

//donc
echo "<br />";

if($nb1 == $nb2 && is_int($nb1) && is_int($nb2))
echo"tout pareil";
else
echo"different";

//mieu
echo "<br />";

$result = ($nb1 != $nb2) && (gettype($nb1) != gettype($nb2));

if($result)
echo "ils sont differents en type et && en valeurs";
else
echo "identique soi en valeur soi en type";
?>
