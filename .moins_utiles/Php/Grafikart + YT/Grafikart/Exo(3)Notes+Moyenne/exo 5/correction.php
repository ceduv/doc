<?php

$notes = [10,20,13];
$somme = array_sum($notes);
$diviseur = count($notes);
$moyenne = $somme/$diviseur;
$round= round($moyenne,1);

echo $round;


?>