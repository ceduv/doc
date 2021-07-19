<?php
$datetest1 = "2014-01-01";
$datetest2 = "2019-04-01";



// on cree l OBJET datetime qu on stock ds une var

$date = new DateTime($datetest1);
$date2 = new DateTime($datetest2);


// on modifie l objet  // " -> " sert a appeler une methode , fonction ds un objet
// $date->modify('+1 month');

// methode diff entre objet date et date2 + valeur absolue (true)
// diff ( DateTimeInterface $targetObject , bool $absolute = false ) : DateInterval
$diff = ($date->diff($date2, true));

// utlisation des proprietes de l objet cree au dessus  : DateInterval
echo "il y a {$diff->y} annee {$diff->m} mois {$diff->d} jours de dif";
echo "\n";


// ===============================================


$time = strtotime($datetest1);  // strtotime — Transforme un texte anglais en timestamp
$time2 = strtotime($datetest2);                         // abs - valeur absolue
$days = floor(abs(($time - $time2) / (60 * 60 * 24)));  // floor - arrondit entier inf 
echo "il y a $days jours";
