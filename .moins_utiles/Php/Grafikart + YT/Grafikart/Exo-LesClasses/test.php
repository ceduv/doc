<?php
require 'Creneau.php';


$creneau = new Creneau(9, 12); // instance de la class Creneau

$creneau2 = new Creneau(14, 18);


var_dump(
    $creneau->intersect($creneau2) // objet->methode(objet2)
    //on verifie si les instances ne se superpose pas ou ne s englobe pas
);

echo $creneau->inclusHeures(10);
echo "\n";
echo $creneau->toHTML();
