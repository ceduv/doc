<?php
$a=true; //A vrai    *1
$b=false;

$result= $a or $b; 
echo $result; // true
echo "<br />";


$c=false; // c faux *2
$d=true;

$result1= $c or $d;
echo $result1; // faux
echo "<br />";


$e=true; // A vrai *1
$f=false;

$result2= $a || $b;
echo $result2; // true 
echo "<br />";

$e=false; // e faux *2
$f=true;

$result3= $e || $f;
echo $result3; // resultat vrai
echo "<br />";
?>
