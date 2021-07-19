<?php

//Le format commence avec la lettre P, pour period. Chaque durée de la période est représentée par une valeur entière suivie par une désignation de période. Si la durée contient des éléments de temps, cette portion de la spécification est précédée par la lettre T.

// on cree un objet qui est un inter valle de temps de 2ans 1moi 1j ...
$interval = new DateInterval('P2Y1M1DT1H');

$date = new DateTime('2019-01-01');

$date->add($interval);

var_dump($date);
