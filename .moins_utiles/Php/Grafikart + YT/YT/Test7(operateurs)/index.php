<?php // VRAI TRUE 1 || FAUX FALSE 0
/*   arithmethiques    :  +
                          -
                          *
                          /
                          %            (pour avoir le reste ???)
                          **           (puissance)
     Fonctions utiles  :  intdiv       (avoir la partie entiere)     
                          fmod         (pour avoir le reste avec ,???) 
     Affectation       :  =
                          +=
                          -= 
                          *=
                          %=         
     Conacatenation    :  .
                          .=
     Logique           :  and           (vrai et vrai)(prio sur premiere valeur passé)
                          &&            (sans ordre de prio)
                          or            (vrai ou faux)(prio sur premiere valeur passé)
                          ||            (sans ordre de prio)
                          xor           (ou exclusif)
*/
$number1 = 15.5;
$number2 = 2.8;
$number3 = 2;   
$number3 += 1; // $number3 = $number3 + 1
$strA = "bonjour";
$strB = " tout le monde .";
$chaine = "1";
$a = true;
$b = true;
$c = false;

$result = $number1+$number2;
echo $result;
echo "<br />";

$result2 = $number1/$number2;
echo $result2;
echo "<br />";

$result3 = intdiv($number1,$number2); /*transforme en int*/
echo $result3;
echo "<br />";

$result4 = $number1%$number2;
echo "ceci est (%) le reste de la division 15/2=7 il reste -->" .$result4. " . ";
echo "<br />";

$result4 = fmod($number1,$number2);
echo "ceci est (fmod) le reste de la division 15/2=7 il reste -->" .$result4. " . ";
echo "<br />";

echo $number3;
echo "<br />";

echo $strA.$strB;
echo "<br />";

echo $chaine;
echo "<br />";

$chaine .="a";
echo $chaine;
echo "<br />";

$chaine .="b";
echo $chaine;
echo "<br />";

echo $a and $b and $c;
echo "<br />";

echo $a or $b or $c;
echo "<br />";



?>