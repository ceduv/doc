<?php
$a = 'cedric';
$b = &$a;           /*fait ref a $a */

echo $a.'<br>'.$b;

$b = "toto";
echo '<br>';

echo $a.'<br>'.$b;

$unflottant = 16.45;
echo (int)$unflottant; /* transtipage*/

unset($unflottant); /* donne une valeur null a une variable*/
var_dump($unflottant);

?>